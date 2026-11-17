module "network_blueprint" {
  source = "../../modules/network_blueprint"

  environment        = "prod"
  availability_zones = ["eu-west-3a", "eu-west-3b", "eu-west-3c"]
  subnet_cidrs = {
    public  = "10.0.3.0/24"
    private = "10.0.13.0/24"
  }
}