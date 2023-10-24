# Configure the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}


# Create a Security Group for an EC2 instance
resource "aws_security_group" "instance" {
  name = "terraform-ec2-instance-sg"
  
  ingress {
    from_port	  = 80
    to_port	      = 80
    protocol	  = "tcp"
    cidr_blocks	= ["0.0.0.0/0"]
  }
  ingress {
    from_port	  = 22
    to_port	      = 22
    protocol	  = "tcp"
    cidr_blocks	= ["0.0.0.0/0"]
  }
}

# Create an EC2 instance
resource "aws_instance" "myinstance" {
  ami           = "ami-0b41f7055516b991a"
  instance_type = "t2.micro"
  vpc_security_group_ids  = ["${aws_security_group.instance.id}"]
  key_name = "mumbai"
  user_data = <<EOF
          #!/bin/bash
          yum install httpd -y
          cd /var/www/html
          echo "Hello, World" > index.html
          service httpd start
          chkconfig httpd on
  EOF	  
  tags = {
    Name = "myec2"
  }
}

# Output variable: Public IP address
output "public_ip" {
  value = "${aws_instance.myinstance.public_ip}"
}