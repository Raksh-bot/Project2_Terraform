variable "aks_name" {
    type = string
  
}
variable "location" {
    type = string
  
}
variable "rg_name" {
    type = string
  
}
variable "dns_prefix" {
    type = string
  
}
variable "node_count" {
    type = number
  
}
variable "vm_size" {
    type = string
  
}

variable "vnet_subnet_id" {
  type        = string
  description = "Subnet ID for AKS"
}

variable "kubernetes_version" {
    type = string
  
}
variable "environment" {
    type = string
  
}