module "tags_report" {
  source = "../../modules/tags_report"

  project_name = "ecommerce"
  environment  = "dev"
  owner        = "equipe-cloud"
}