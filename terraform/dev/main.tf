terraform {
  backend "s3" {
    bucket         = "my-terraform-243-bucket-990765"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
  }
}

provider "aws" {
  region = "us-east-1"
}

module "ec2_dev" {
  source = "../modules/ec2"

  instance_type = "t2.micro"
  instance_name = "dev-ec2"
}
