terraform {
  backend "azurerm" {
    resource_group_name  = "rg"
    storage_account_name = "storageacc316"
    container_name       = "tfstate"
    key                  = "dev.tfstate"
  }
}
