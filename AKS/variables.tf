variable "resource_group_name" {
  type    = string
  default = "rg-aks-demo"
}

variable "location" {
  type    = string
  default = "Central India"
}

variable "aks_name" {
  type    = string
  default = "aks-devops"
}

variable "node_count" {
  type    = number
  default = 1
}

variable "node_vm_size" {
  type    = string
  default = "Standard_B2s"
}