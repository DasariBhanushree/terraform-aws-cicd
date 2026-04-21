terraform {
  backend "s3" {
    bucket = "my-terraform-demo-bucket-990765"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}