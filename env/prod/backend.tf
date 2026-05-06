terraform {
  backend "azurerm" {
    resource_group_name  = "rg"
    storage_account_name = "storageacc333"
    container_name       = "tfstate"
    key                  = "prod.tfstate"
  }
}
