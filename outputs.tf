output "resource_group_name" {
  description = "Name of the resource group"
  value       = azurerm_resource_group.main.name
}

output "vm_name" {
  description = "Name of the virtual machine"
  value       = azurerm_linux_virtual_machine.main.name
}

output "vm_private_ip" {
  description = "Private IP address of the virtual machine"
  value       = azurerm_network_interface.main.private_ip_address
}

output "vm_admin_username" {
  description = "Admin username for the virtual machine"
  value       = azurerm_linux_virtual_machine.main.admin_username
}

output "vm_admin_password" {
  description = "Admin password for the virtual machine"
  value       = random_password.vm_password.result
  sensitive   = true
}

output "virtual_network_name" {
  description = "Name of the virtual network"
  value       = azurerm_virtual_network.main.name
}

output "subnet_name" {
  description = "Name of the private subnet"
  value       = azurerm_subnet.private.name
}

output "network_security_group_name" {
  description = "Name of the network security group"
  value       = azurerm_network_security_group.main.name
}

output "vm_size" {
  description = "Size of the virtual machine"
  value       = azurerm_linux_virtual_machine.main.size
}

output "disk_size_gb" {
  description = "Size of the OS disk in GB"
  value       = azurerm_linux_virtual_machine.main.os_disk[0].disk_size_gb
}
