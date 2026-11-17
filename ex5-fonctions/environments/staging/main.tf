module "s3_audit" {
  source = "../../modules/s3_audit"

  bucket_name    = "  Mon-Super-Bucket-S3-Staging  "
  instance_types = ["t3.micro", "t3.medium", "t3.large"]
  network_public = {
    subnet  = "10.1.10.0/24"
    gateway = "igw-staging"
  }
  network_private = {
    subnet = "10.1.20.0/24"
  }
}
