# Example Terraform variables file
# Copy this file to terraform.tfvars and modify as needed

# Azure region
location = "East US"

# Environment
environment = "dev"

# Virtual Machine Configuration
vm_name        = "vm-private-dev"
vm_size        = "Standard_B1s"  # 1 vCPU, 1 GB RAM
admin_username = "azureuser"
disk_size_gb   = 30

# Resource naming
resource_group_name_prefix = "rg-private-vm"

# Tags
tags = {
  Environment = "Development"
  Project     = "Private-VM-Demo"
  ManagedBy   = "Terraform"
  Owner       = "DevOps Team"
}
