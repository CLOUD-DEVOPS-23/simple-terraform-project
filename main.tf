module "network" {
  source = "./modules/network"
  vpc_id = data.aws_vpc.default.id
  region = var.region
}

module "compute" {
  source            = "./modules/compute"
  security_group_id = module.network.security_group_id
  region            = var.region
}