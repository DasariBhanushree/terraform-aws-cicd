provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket = "my-terraform-demo-bucket-12345"

  tags = {
    Name = "DemoBucket"
    Environment = "Dev"
  }
}
