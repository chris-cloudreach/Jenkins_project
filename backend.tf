# terraform {
#   backend "s3"{
#       bucket = "my-first-lambdabucket-194694014750"
#       key = "sprint3/week6/ec2-ansible/terraform.tfstate"
#       dynamodb_table = "terraform-lock"
      
#   }
# }

# sudo docker container rm -f $(sudo docker ps -a -q)
# rm -rf ./Jenkins_project
# echo "REMOVED OLD JENKINS GIT PROJECT"