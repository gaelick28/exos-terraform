module "s3_audit" {
  source = "../../modules/s3_audit"

  bucket_name    = "  Mon-Super-Bucket-S3-Dev  "
  instance_types = ["t3.micro", "t3.small"]
  network_public = {
    subnet  = "10.0.10.0/24"
    gateway = "igw-dev"
  }
  network_private = {
    subnet = "10.0.20.0/24"
  }
}
