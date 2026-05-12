output "bucket_name" {
  value = "bhanu-terraform-state-bucket"
}

output "instance_public_ip" {
  value = module.ec2.instance_public_ip
}