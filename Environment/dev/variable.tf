variable "mod_rg_name" {
    type = string
}
variable "mod_rg_location" {
    type = string
}
variable "mod_vnet_name" {
    type = string
}
variable "mod_address_space" {
    type = list(string)
}
variable "mod_subnet_name" {
    type = string
}
variable "mod_subnet_prefix" {
    type = list(string)
}
variable "mod_aks_name" {
    type = string
}
variable "mod_dns_prefix" {
    type = string
}
variable "mod_node_count" {
    type = number
}
variable "mod_vm_size" {
    type = string
}
variable "mod_kubernetes_version" {
    type = string
}
variable "mod_environment" {
    type = string
}
