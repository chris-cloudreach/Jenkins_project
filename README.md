## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.2.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.21.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.21.0 |
| <a name="provider_local"></a> [local](#provider\_local) | 2.2.3 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | 4.0.3 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_network"></a> [network](#module\_network) | github.com/pasc-ed/talent-academy-vpc-module | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_eip.jenkins_eip](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_eip.jenkins_slave_eip](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_iam_instance_profile.ec2_instanceprofile](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |
| [aws_iam_role.SlaveServerRole](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_instance.my_public_server](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_instance.my_slave_server](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_key_pair.ec2_keypair](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) | resource |
| [aws_security_group.my_app_sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_serverlessapplicationrepository_cloudformation_stack.serverless-form-handler](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/serverlessapplicationrepository_cloudformation_stack) | resource |
| [local_file.ssh_key](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [tls_private_key.example](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |
| [aws_ami.my_aws_ami](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [aws_partition.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/partition) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_SlaveServerPublicip"></a> [SlaveServerPublicip](#input\_SlaveServerPublicip) | My SlaveServerPublicip address | `string` | n/a | yes |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | The type of my first server | `string` | `"t2.medium"` | no |
| <a name="input_internet_gw_name"></a> [internet\_gw\_name](#input\_internet\_gw\_name) | The Name of my Internet Gatewat | `string` | n/a | yes |
| <a name="input_key_spec"></a> [key\_spec](#input\_key\_spec) | n/a | `string` | `"SYMMETRIC_DEFAULT"` | no |
| <a name="input_keypair_name"></a> [keypair\_name](#input\_keypair\_name) | Name of my key pair on the console | `string` | n/a | yes |
| <a name="input_kms_alias"></a> [kms\_alias](#input\_kms\_alias) | n/a | `string` | `"CWLogKey"` | no |
| <a name="input_my_ip"></a> [my\_ip](#input\_my\_ip) | My IP address | `string` | n/a | yes |
| <a name="input_private_a_cidr"></a> [private\_a\_cidr](#input\_private\_a\_cidr) | CIDR of the private Subnet in AZ A | `string` | n/a | yes |
| <a name="input_public_a_cidr"></a> [public\_a\_cidr](#input\_public\_a\_cidr) | CIDR of the public Subnet in AZ A | `string` | n/a | yes |
| <a name="input_public_b_cidr"></a> [public\_b\_cidr](#input\_public\_b\_cidr) | CIDR of the public Subnet in AZ B | `string` | n/a | yes |
| <a name="input_public_c_cidr"></a> [public\_c\_cidr](#input\_public\_c\_cidr) | CIDR of the public Subnet in AZ C | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Default region for our VPC | `string` | n/a | yes |
| <a name="input_rotation_enabled"></a> [rotation\_enabled](#input\_rotation\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_user_arn"></a> [user\_arn](#input\_user\_arn) | n/a | `string` | `"arn:aws:iam::314045000409:user/chrisOGB"` | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | The CIDR of my VPC | `string` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | The Name of my VPC | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_Jenkins_Server_ip"></a> [Jenkins\_Server\_ip](#output\_Jenkins\_Server\_ip) | n/a |
| <a name="output_Slave_Server_ip"></a> [Slave\_Server\_ip](#output\_Slave\_Server\_ip) | n/a |
