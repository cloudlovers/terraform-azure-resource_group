provider "azurerm" {
  features {}
}

module "resource_group" {
  source = "../"

  environment = "test"
  label_order = ["name", "environment", ]

  name     = "example"
  location = "North Europe"
}
