module "compliance" {
  source = "../../modules/compliance"

  aws_environment = "staging"
  storage_size_gb = 100
}