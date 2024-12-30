resource "aws_instance" "compute" {
  #ami           = "ami-053b12d3152c0cc71"
  ami           = var.ec2_ami_id
  #instance_type = "t2.micro"
  instance_type = var.ec2_instance_type
  tags = {
    Name = "compute-instance"
  }
output "instance_id" {
  value = aws_instance.main.id
  }
  
}
