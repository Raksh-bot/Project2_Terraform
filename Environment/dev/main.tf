module "resourcegrp" {
    source = "../../module/resourcegrp"
    rg_name = var.mod_rg_name
    rg_location = var.mod_rg_location
}
module "vnet" {
    source = "../../module/vnet"
    vnet_name = var.mod_vnet_name
    location = module.resourcegrp.rg_location
    rg_name = module.resourcegrp.rg_name
    address_space = var.mod_address_space
    subnet_name   = var.mod_subnet_name
    subnet_prefix = var.mod_subnet_prefix

}
module "aks" {
  source = "../../module/aks"

  aks_name   = var.mod_aks_name
  location   = module.resourcegrp.rg_location
  rg_name    = module.resourcegrp.rg_name
  dns_prefix = var.mod_dns_prefix

  node_count = var.mod_node_count
  vm_size    = var.mod_vm_size

  vnet_subnet_id     = module.vnet.subnet_id
  kubernetes_version = var.mod_kubernetes_version
  environment        = var.mod_environment
}