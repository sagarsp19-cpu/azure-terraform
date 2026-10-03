variable "resource_group_name" {
  type    = string
  default = "rg-storage-demo"
}

variable "location" {
  type    = string
  default = "Central India"
}

variable "storage_account_name" {
  type = string
}

variable "container_name" {
  type    = string
  default = "data"
}