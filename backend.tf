terraform {
  backend "s3" {
    bucket         = "spliting-bucket2"
    key            = "Latest-demo-monday/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "networking"
  }
}
