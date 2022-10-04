# resource "aws_config_config_rule" "VPC_SG_OPEN_ONLY_TO_AUTHORIZED_PORTS" {
#   name = "VPC_SG_OPEN_ONLY_TO_AUTHORIZED_PORTS"

#   source {
#     owner             = "AWS"
#     source_identifier = "VPC_SG_OPEN_ONLY_TO_AUTHORIZED_PORTS"
#   }

# #     input_parameters = <<EOF
# # {
# #   "authorizedTcpPorts": "8080"
# # }
# # EOF

#   depends_on = ["aws_config_configuration_recorder.foo"]
# }


# resource "aws_config_config_rule" "cloud_trail_enabled" {
#   name = "cloud_trail_enabled"

#   source {
#     owner             = "AWS"
#     source_identifier = "CLOUD_TRAIL_ENABLED"
#   }
#     scope {
#     compliance_resource_types = []
#   }

# #   input_parameters = <<EOF
# # {
# #   "s3BucketName": "cloudwatch-to-s3-logs"
# # }
# # EOF

#   depends_on = ["aws_config_configuration_recorder.foo"]
# }

# resource "aws_config_config_rule" "s3_bucket_versioning_enabled" {
#   name = "s3_bucket_versioning_enabled"

#   source {
#     owner             = "AWS"
#     source_identifier = "S3_BUCKET_VERSIONING_ENABLED"
#   }
#   scope {
#     compliance_resource_types = ["AWS::S3::Bucket"]
#   }

#   depends_on = ["aws_config_configuration_recorder.foo"]
# }

# resource "aws_config_config_rule" "dynamodb-table-encryption-enabled" {
#   name = "dynamodb-table-encryption-enabled"
#   description = "A config rule that checks whether the Amazon DynamoDB tables are encrypted and checks their status. The rule is COMPLIANT if the status is enabled or enabling."

#   source {
#     owner = "AWS"
#     source_identifier = "DYNAMODB_TABLE_ENCRYPTION_ENABLED"
#   }
#   scope {
#     compliance_resource_types = ["AWS::DynamoDB::Table"]
#   }
#     depends_on = ["aws_config_configuration_recorder.foo"]

# }





