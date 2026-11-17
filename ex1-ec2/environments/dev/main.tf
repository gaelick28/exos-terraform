module "create_file" {
  source = "../../modules/create_file"

  aws_region        = "eu-west-3"
  instance_count    = 1
  enable_monitoring = false
}
