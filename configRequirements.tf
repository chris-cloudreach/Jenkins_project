# resource "aws_s3_bucket" "my-config-bucket" {
#   bucket = "config-bucket-for-my-test-project-12345"
#   acl    = "private"

#   lifecycle {
#     prevent_destroy = true
#   }
# }

# resource "aws_s3_bucket_versioning" "versioning_config-bucket" {
#   bucket = aws_s3_bucket.my-config-bucket.id
#   versioning_configuration {
#     status = "Enabled"
#   }
# }

# resource "aws_config_configuration_recorder" "foo" {
#   name     = "config-recorder"
#   role_arn = aws_iam_role.r.arn

#    recording_group {
#     all_supported                 = true
#     include_global_resource_types = true
#   }
# }

# resource "aws_config_delivery_channel" "my-config" {
#   name           = "config-example"
#   s3_bucket_name = "${aws_s3_bucket.my-config-bucket.bucket}"

#   depends_on = ["aws_config_configuration_recorder.foo"]
# }

# resource "aws_config_configuration_recorder_status" "config" {
#   name       = "${aws_config_configuration_recorder.foo.name}"
#   is_enabled = true

#   depends_on = ["aws_config_delivery_channel.my-config"]
# }

# resource "aws_iam_role" "r" {
#   name = "my-awsconfig-role"

#   assume_role_policy = <<POLICY
# {
#   "Version": "2012-10-17",
#   "Statement": [
#     {
#       "Action": "sts:AssumeRole",
#       "Principal": {
#         "Service": "config.amazonaws.com"
#       },
#       "Effect": "Allow",
#       "Sid": ""
#     }
#   ]
# }
# POLICY
# }

# resource "aws_iam_role_policy_attachment" "my-config-pol-attach" {
#   role       = "${aws_iam_role.r.name}"
#   policy_arn = "arn:aws:iam::aws:policy/service-role/AWSConfigRole"
# }