variable "resource_group_name" {
  type    = string
  default = "rg-vm-demo"
}

variable "location" {
  type    = string
  default = "Central India"
}

variable "vm_name" {
  type    = string
  default = "linux-vm"
}

variable "admin_username" {
  type    = string
  default = "azureadmin"
}

variable "admin_password" {
  type      = string
  sensitive = true
}