
module "labels" {
  source = "git::https://github.com/cloudlovers/terraform-azure-labels.git"

  name          = var.name
  environment   = var.environment
  label_order   = var.label_order
}

# RESOURCE GROUP
resource "azurerm_resource_group" "default" {
  count    = var.enabled ? 1 : 0
  name     = format("%s-resource-group", module.labels.id)
  location = var.location
  tags     = module.labels.tags

  timeouts {
    create = var.create
    read   = var.read
    update = var.update
    delete = var.delete
  }
}
