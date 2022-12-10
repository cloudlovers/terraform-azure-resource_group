provider "azurerm" {
  features {}
}

module "resource_group" {
  source = "../"

  name     = "app"
  environment = "test"
  label_order = ["name", "environment", ]

  location = "North Europe"
}
