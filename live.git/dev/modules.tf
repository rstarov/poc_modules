module "resource_group" {
  source      = "../../modules.git/resource-group"
  area        = var.area
  project     = var.project
  env         = var.env
  region      = var.region
  common_tags = var.common_tags
}
module "network_security_group" {
  source              = "../../modules.git/network-security-group"
  project             = var.project
  resource_group_name = module.resource_group.name
}
module "vnet" {
  source              = "../../modules.git/vnet"
  project             = var.project
  resource_group_name = module.resource_group.name
  virtualnetwork_cidr = list(var.virtualnetwork_cidr)
  #virtualnetwork_cidr = ["192.168.17.0/24"]
}
