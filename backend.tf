terraform {
  backend "azurerm" {
    resource_group_name  = "do4m-mentorcruise-rg"
    storage_account_name = "do4mterraformrfvars"
    container_name       = "blob3"
    key                  = "terraform.tfstate"
  }
}
