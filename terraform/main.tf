provider "aws" {
  region = "ca-central-1"  # Set your AWS region
}

resource "aws_instance" "devops_instance" {
  ami           = "ami-03bcd79f25ca6b127"  # Ubuntu AMI for ca-central-1
  instance_type = "t2.micro"
  key_name      = "my-key"  # Your key pair name

  security_groups = ["default"]  # Adjust if using a custom security group

  tags = {
    Name = "DevOps-Terraform-Instance"
  }
}

