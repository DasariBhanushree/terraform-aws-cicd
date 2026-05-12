resource "aws_instance" "web" {
  ami           = "ami-0a59ec92177ec3fad"
  instance_type = var.instance_type
  subnet_id     = var.subnet_id

  vpc_security_group_ids = [var.sg_id]

  tags = {
    Name = "terraform-cicd-server"
  }
}