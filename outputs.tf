output "resource_group_id" {
  value       = join("", azurerm_resource_group.default.*.id)
  description = "The ID of the Resource Group."
}

output "resource_group_name" {
  value       = join("", azurerm_resource_group.default.*.name)
  description = "The ID of the Resource Group."
}

output "resource_group_location" {
  value       = join("", azurerm_resource_group.default.*.location)
  description = "The ID of the Resource Group."
}

output "tags" {
  value       = module.labels.tags
  description = "The tags associated to resources."
}
