# --- aws_transfer_web_app ---
output "transfer_web_apps_id" {
  description = "Map of id values across all transfer_web_apps, keyed the same as var.transfer_web_apps"
  value       = module.transfer_web_apps.transfer_web_apps_id
}

output "transfer_web_apps_access_endpoint" {
  description = "Map of access_endpoint values across all transfer_web_apps, keyed the same as var.transfer_web_apps"
  value       = module.transfer_web_apps.transfer_web_apps_access_endpoint
}

output "transfer_web_apps_arn" {
  description = "Map of arn values across all transfer_web_apps, keyed the same as var.transfer_web_apps"
  value       = module.transfer_web_apps.transfer_web_apps_arn
}

output "transfer_web_apps_endpoint_details" {
  description = "Map of endpoint_details values across all transfer_web_apps, keyed the same as var.transfer_web_apps"
  value       = module.transfer_web_apps.transfer_web_apps_endpoint_details
}

output "transfer_web_apps_identity_provider_details" {
  description = "Map of identity_provider_details values across all transfer_web_apps, keyed the same as var.transfer_web_apps"
  value       = module.transfer_web_apps.transfer_web_apps_identity_provider_details
}

output "transfer_web_apps_region" {
  description = "Map of region values across all transfer_web_apps, keyed the same as var.transfer_web_apps"
  value       = module.transfer_web_apps.transfer_web_apps_region
}

output "transfer_web_apps_tags" {
  description = "Map of tags values across all transfer_web_apps, keyed the same as var.transfer_web_apps"
  value       = module.transfer_web_apps.transfer_web_apps_tags
}

output "transfer_web_apps_tags_all" {
  description = "Map of tags_all values across all transfer_web_apps, keyed the same as var.transfer_web_apps"
  value       = module.transfer_web_apps.transfer_web_apps_tags_all
}

output "transfer_web_apps_web_app_endpoint_policy" {
  description = "Map of web_app_endpoint_policy values across all transfer_web_apps, keyed the same as var.transfer_web_apps"
  value       = module.transfer_web_apps.transfer_web_apps_web_app_endpoint_policy
}

output "transfer_web_apps_web_app_id" {
  description = "Map of web_app_id values across all transfer_web_apps, keyed the same as var.transfer_web_apps"
  value       = module.transfer_web_apps.transfer_web_apps_web_app_id
}

output "transfer_web_apps_web_app_units" {
  description = "Map of web_app_units values across all transfer_web_apps, keyed the same as var.transfer_web_apps"
  value       = module.transfer_web_apps.transfer_web_apps_web_app_units
}

# --- aws_transfer_web_app_customization ---
output "transfer_web_app_customizations_id" {
  description = "Map of id values across all transfer_web_app_customizations, keyed the same as var.transfer_web_app_customizations"
  value       = module.transfer_web_app_customizations.transfer_web_app_customizations_id
}

output "transfer_web_app_customizations_favicon_file" {
  description = "Map of favicon_file values across all transfer_web_app_customizations, keyed the same as var.transfer_web_app_customizations"
  value       = module.transfer_web_app_customizations.transfer_web_app_customizations_favicon_file
}

output "transfer_web_app_customizations_logo_file" {
  description = "Map of logo_file values across all transfer_web_app_customizations, keyed the same as var.transfer_web_app_customizations"
  value       = module.transfer_web_app_customizations.transfer_web_app_customizations_logo_file
}

output "transfer_web_app_customizations_region" {
  description = "Map of region values across all transfer_web_app_customizations, keyed the same as var.transfer_web_app_customizations"
  value       = module.transfer_web_app_customizations.transfer_web_app_customizations_region
}

output "transfer_web_app_customizations_title" {
  description = "Map of title values across all transfer_web_app_customizations, keyed the same as var.transfer_web_app_customizations"
  value       = module.transfer_web_app_customizations.transfer_web_app_customizations_title
}

output "transfer_web_app_customizations_web_app_id" {
  description = "Map of web_app_id values across all transfer_web_app_customizations, keyed the same as var.transfer_web_app_customizations"
  value       = module.transfer_web_app_customizations.transfer_web_app_customizations_web_app_id
}


