# VPC
variable "vpc_cidr" {
  description = "The CIDR of my VPC"
  type        = string
}


variable "region" {
  description = "Default region for our VPC"
  type        = string
}

variable "vpc_name" {
  description = "The Name of my VPC"
  type        = string
}

# INTERNET GATEWAY
variable "internet_gw_name" {
  description = "The Name of my Internet Gatewat"
  type        = string
}

# SUBNET
# PUBLIC
variable "public_a_cidr" {
  description = "CIDR of the public Subnet in AZ A"
  type        = string
}

variable "public_b_cidr" {
  description = "CIDR of the public Subnet in AZ B"
  type        = string
}

variable "public_c_cidr" {
  description = "CIDR of the public Subnet in AZ C"
  type        = string
}

# PRIVATE
variable "private_a_cidr" {
  description = "CIDR of the private Subnet in AZ A"
  type        = string
}

# INSTANCE
variable "instance_type" {
  description = "The type of my first server"
  type        = string
  default     = "t2.medium"
}

variable "keypair_name" {
  description = "Name of my key pair on the console"
  type        = string
}

variable "my_ip" {
  description = "My IP address"
  type        = string
}

variable "SlaveServerPublicip" {
  description = "My SlaveServerPublicip address"
  type        = string
}



variable "user_arn" {
  default = "arn:aws:iam::314045000409:user/chrisOGB"
}

variable "key_spec" {
  default = "SYMMETRIC_DEFAULT"
}

variable "enabled" {
  default = true
}

variable "rotation_enabled" {
  default = true
}

variable "kms_alias" {
  default = "CWLogKey"
}
