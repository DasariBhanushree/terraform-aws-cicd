terraform {
  backend "s3" {
    bucket         = "my-terraform-243-bucket-990765"
    key            = "prod/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"
  }
}

provider "aws" {
  region = "us-east-1"
}

module "ec2_prod" {
  source = "../modules/ec2"

  instance_type = "t2.small"
  instance_name = "prod-ec2"
}
