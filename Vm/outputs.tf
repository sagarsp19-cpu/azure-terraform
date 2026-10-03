output "resource_group" {
  value = azurerm_resource_group.rg.name
}

output "public_ip" {
  value = azurerm_public_ip.pip.ip_address
}

output "private_ip" {
  value = azurerm_network_interface.nic.private_ip_address
}

output "vm_name" {
  value = azurerm_linux_virtual_machine.vm.name
}