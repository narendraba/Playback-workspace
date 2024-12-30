variable "aws_region" {
  description = "AWS region"
  type  = string
  default = "ap-south-1"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type = string 
}

variable "ami_id" {
  description = "AMI ID for ec2 instance "
  type = string
}
