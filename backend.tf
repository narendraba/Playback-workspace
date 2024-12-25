terraform {
  backend "s3" {
    bucket         = "spliting-bucket2"
    key            = "workspaces/${terraform.workspace}/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "networking"
  }
}
