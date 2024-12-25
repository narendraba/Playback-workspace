#terraform {
#  backend "s3" {
#    bucket         = "spliting-bucket2"
#    key            = "workspaces/${terraform.workspace}/terraform.tfstate"
#    region         = "ap-south-1"
#    encrypt        = true
#    dynamodb_table = "networking"
#  }
#}

provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./terraform-workspace/modules/vpc"
  cidr_block = var.vpc_cidr
}

module "vpc" {
  source = "./terraform-workspace/modules/vpc"
  instance_type   = var.ec2_instance_type
  ami_id = var.ec2_ami_id
  }
