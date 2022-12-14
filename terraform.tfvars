# VPC
vpc_cidr = "10.0.0.0/16"
vpc_name = "new-vpc-from-module"
region   = "eu-west-1"
# IG
internet_gw_name = "talent-academy-new-INT-GW"

## SUBNETS
# PUBLIC
public_a_cidr = "10.0.11.0/24"
public_b_cidr = "10.0.12.0/24"
public_c_cidr = "10.0.13.0/24"
# PRIVATE
private_a_cidr = "10.0.21.0/24"

# Instances
keypair_name        = "ta-lab-key"
my_ip               = "86.15.241.215"  #"86.15.241.215"
SlaveServerPublicip = "54.195.130.104" # REPLACE WITH IP OF SLAVE NODE
