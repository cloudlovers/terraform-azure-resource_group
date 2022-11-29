output "resource_group_id" {
  value       = module.resource_group.resource_group_id
  description = "The ID of the Resource Group."
}

output "resource_group_name" {
  value       = module.resource_group.resource_group_name
  description = "The name of the Resource Group."
}

output "resource_group_location" {
  value       = module.resource_group.resource_group_location
  description = "The location of the Resource Group."
}

output "tags" {
  value       = module.resource_group.tags
  description = "The tags associated to resources."
}
