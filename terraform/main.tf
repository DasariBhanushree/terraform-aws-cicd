terraform {
  backend "s3" {
    bucket = "my-terraform-243-bucket-990765"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}
