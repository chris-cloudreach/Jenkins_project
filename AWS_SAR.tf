resource "aws_serverlessapplicationrepository_cloudformation_stack" "serverless-form-handler" {
  name           = "APIGW-Lambda-DynamoDB"
  application_id = "arn:aws:serverlessrepo:us-east-1:780018668030:applications/serverless-form-handler"

  capabilities = [
    "CAPABILITY_IAM",

  ]
  parameters = {
    ValidatedEmail = "christopher.ogbunuzor@cloudreach.com"
  }
}

data "aws_partition" "current" {}
data "aws_region" "current" {}