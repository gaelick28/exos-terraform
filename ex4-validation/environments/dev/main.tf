module "compliance" {
  source = "../../modules/compliance"

  aws_environment = "dev"
  storage_size_gb = 20
}
