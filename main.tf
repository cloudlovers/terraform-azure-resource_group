
module "labels" {
  source  = "../azure-labels"

  name          = var.name
  environment   = var.environment
  label_order   = var.label_order
}

# RESOURCE GROUP
resource "azurerm_resource_group" "default" {
  count    = var.enabled ? 1 : 0
  name     = format("%s-%s-resource-group", var.name, var.environment)
  location = var.location
  tags     = module.labels.tags

  timeouts {
    create = var.create
    read   = var.read
    update = var.update
    delete = var.delete
  }
}
