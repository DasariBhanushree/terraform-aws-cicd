provider "aws" {
  region = "ap-south-1"
}

resource "aws_security_group" "sg" {
  name        = "demo-sg"
  description = "Allow SSH"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "ec2" {
  ami           = "ami-0f5ee92e2d63afc18" # Amazon Linux (ap-south-1)
  instance_type = "t2.micro"

  vpc_security_group_ids = [aws_security_group.sg.id]

  tags = {
    Name = "My-EC2"
  }
}
