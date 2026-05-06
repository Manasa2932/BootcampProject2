module "resource_group" {
  source   = "../../modules/rg"
  rg_name  = var.rg_name
  location = var.location
}

module "vnet" {
  source              = "../../modules/vnet"
  resource_group_name = module.resource_group.rg_name
  location            = var.location
  name                = var.vnet_name
  address_space       = var.address_space
  subnet_name         = var.subnet_name
  subnet_prefix       = var.subnet_prefix
}

module "aks" {
  source              = "../../modules/aks"
  resource_group_name = module.resource_group.rg_name
  location            = var.location
  name                = var.aks_name
  dns_prefix          = var.dns_prefix
  node_count          = var.node_count
  vm_size             = var.vm_size
  service_cidr        = var.service_cidr
  dns_service_ip      = var.dns_service_ip
  subnet_id           = module.vnet.subnet_id
}

