variable "resource_group_name_prefix" {
  type        = string
  description = "Prefix for the resource group name"
  default     = "rg-terraform"
}

variable "location" {
  type        = string
  description = "Azure region where resources will be created"
  default     = "East US"
}

variable "environment" {
  type        = string
  description = "Environment name (e.g., dev, staging, prod)"
  default     = "dev"
}

variable "vm_name" {
  type        = string
  description = "Name of the virtual machine"
  default     = "vm-private"
}

variable "vm_size" {
  type        = string
  description = "Size of the virtual machine"
  default     = "Standard_B1s"
  
  validation {
    condition = contains([
      "Standard_B1s",
      "Standard_B1ls",
      "Standard_B1ms",
      "Standard_B2s"
    ], var.vm_size)
    error_message = "VM size must be a valid B-series size for small workloads."
  }
}

variable "admin_username" {
  type        = string
  description = "Admin username for the virtual machine"
  default     = "azureuser"
}

variable "disk_size_gb" {
  type        = number
  description = "Size of the OS disk in GB"
  default     = 30
  
  validation {
    condition     = var.disk_size_gb >= 30 && var.disk_size_gb <= 1024
    error_message = "Disk size must be between 30 and 1024 GB."
  }
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to all resources"
  default = {
    Environment = "Development"
    Project     = "Private-VM"
    ManagedBy   = "Terraform"
  }
}
