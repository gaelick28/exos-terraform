module "network_blueprint" {
  source = "../../modules/network_blueprint"

  environment        = "dev"
  availability_zones = ["eu-west-3a", "eu-west-3b"]
  subnet_cidrs = {
    public  = "10.0.1.0/24"
    private = "10.0.11.0/24"
  }
}