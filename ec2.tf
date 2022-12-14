resource "aws_security_group" "my_app_sg" {
  name        = "my_app_sg"
  description = "Allow access to my Server"
  vpc_id      = module.network.my_vpc_id

  # INBOUND RULES
  ingress {
    description = "SSH from my mac"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${var.my_ip}/32"]
  }

  ingress {
    description = "for jenkins"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["${var.my_ip}/32"]
  }

  ingress {
    description = "for jenkins from vpc"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["${var.vpc_cidr}"]
  }

  ingress {
    description = "for jenkins from github 1"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["140.82.112.0/20"]
  }


  ingress {
    description = "for jenkins from Slave Server"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["${var.SlaveServerPublicip}/32"]
  }

  ingress {
    description = "for jenkins from github 2"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["192.30.252.0/22"]
  }

  ingress {
    description = "SSH from my VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }


  ingress {
    description = "https from the world"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow access to the world"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "my_app_sg"
  }
}

data "aws_ami" "my_aws_ami" {
  owners      = ["099720109477"]
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
}

resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "ec2_keypair" {
  key_name   = var.keypair_name
  public_key = tls_private_key.example.public_key_openssh

  #  provisioner "local-exec" { # Create a "myKey.pem" to your computer!!
  #   command = "echo '${tls_private_key.pk.private_key_pem}' > ./myKey.pem"
  # }
}

resource "local_file" "ssh_key" {
  filename = "${aws_key_pair.ec2_keypair.key_name}.pem"
  content  = tls_private_key.example.private_key_pem
}

# Creating an Elastic IP called jenkins_eip
resource "aws_eip" "jenkins_eip" {
  # Attaching it to the jenkins_server EC2 instance
  instance = aws_instance.my_public_server.id

  # Making sure it is inside the VPC
  vpc = true

  # Setting the tag Name to jenkins_eip
  tags = {
    Name = "jenkins_eip"
  }
}

resource "aws_eip" "jenkins_slave_eip" {
  # Attaching it to the jenkins_server EC2 instance
  instance = aws_instance.my_slave_server.id

  # Making sure it is inside the VPC
  vpc = true

  # Setting the tag Name to jenkins_eip
  tags = {
    Name = "jenkins_slave_eip"
  }
}

# EC2 - PUBLIC
resource "aws_instance" "my_public_server" {
  ami                    = data.aws_ami.my_aws_ami.id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.ec2_keypair.key_name
  subnet_id              = module.network.public_subnet_a_id
  vpc_security_group_ids = [aws_security_group.my_app_sg.id]

  user_data = file("install_jenkins.sh")


  tags = {
    Name = "Jenkins Server"
  }
}

resource "aws_instance" "my_slave_server" {
  ami                    = data.aws_ami.my_aws_ami.id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.ec2_keypair.key_name
  subnet_id              = module.network.public_subnet_a_id
  vpc_security_group_ids = [aws_security_group.my_app_sg.id]

  iam_instance_profile = aws_iam_instance_profile.ec2_instanceprofile.name

  user_data = file("nodeinstall.sh")


  tags = {
    Name = "Slave Server"
  }
}
