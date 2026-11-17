module "network_blueprint" {
  source = "../../modules/network_blueprint"

  environment        = "staging"
  availability_zones = ["eu-west-3a", "eu-west-3b"]
  subnet_cidrs = {
    public  = "10.0.2.0/24"
    private = "10.0.12.0/24"
  }
}