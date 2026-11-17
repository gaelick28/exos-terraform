module "compliance" {
  source = "../../modules/compliance"

  aws_environment = "prod"
  storage_size_gb = 500
}