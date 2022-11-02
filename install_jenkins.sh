# #!/bin/bash
# sudo apt-get update -y
# sudo apt-get upgrade -y
# sudo apt install openjdk-11-jdk -y
# wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key |sudo gpg --dearmor -o /usr/share/keyrings/jenkins.gpg
# sudo sh -c 'echo deb [signed-by=/usr/share/keyrings/jenkins.gpg] http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
# sudo apt update
# sudo apt install jenkins -y
# sudo systemctl start jenkins.service
# sudo ufw allow 8080
# sudo ufw allow OpenSSH
# sudo ufw enable
# sudo apt install docker.io -y


# # # # # Below, if we need to install docker-compose
# # # sudo apt install curl
# # # sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
# # # sudo chmod +x /usr/local/bin/docker-compose
