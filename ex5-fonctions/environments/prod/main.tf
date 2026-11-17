module "s3_audit" {
  source = "../../modules/s3_audit"

  bucket_name    = "  Mon-Super-Bucket-S3-Donnees-Clients  "
  instance_types = ["t3.medium", "m5.large", "m5.xlarge"]
  network_public = {
    subnet  = "10.2.10.0/24"
    gateway = "igw-prod"
  }
  network_private = {
    subnet = "10.2.20.0/24"
  }
}
