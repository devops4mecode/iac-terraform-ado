/*-------------------- Variable values for Resource Group ---------------------------------------*/

resource_group_name     = "do4m-mentorcruise-rg"
resource_group_location = "Southeast Asia"
rg_tags = {
  Name        = "do4m-mentorcruise-rg",
  Environment = "staging",
  Owner       = "DevOps"
}

/*-------------------- Variable values for Vnet ------------------------------------------------*/

vnet_name                   = "do4m-mentorcruise-vnet"
address_space               = ["10.0.0.0/16"]
create_ddos_protection_plan = false
dns_servers                 = []
vnet_tags = {
  Name        = "do4m-mentorcruise-vnet-CI",
  Environment = "staging",
  Owner       = "DevOps"
}

# /*--------------------- Variable values for Subnet ----------------------------------------*/

subnet_name              = ["sub-pub-do4m-1"]
subnet_address_prefixes  = ["10.0.0.0/24"]
subnet_service_endpoints = ["Microsoft.AzureActiveDirectory"]

/*-------------------------------- Variable values for Virtual Machine -----------------*/

vm_name                          = ["do4m-vm"]
vm_size                          = "Standard_DS3_v2"
vm_location                      = "Southeast Asia"
delete_os_disk_on_termination    = true
delete_data_disks_on_termination = true
availability_zones               = [["1"]]

storage_image_reference = {
  publisher = "Canonical"
  offer     = "UbuntuServer"
  sku       = "18.04-LTS"
  version   = "latest"
}

os_profile = {
  computer_name  = "hostname"
  admin_username = "do4m-admin"
  admin_password = "do4m-admin@123"
}



