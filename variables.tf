variable "transfer_web_apps" {
  description = <<EOT
Map of transfer_web_apps, attributes below
Optional:
    - access_endpoint
    - region
    - tags
    - web_app_endpoint_policy
    - endpoint_details (block)
    - identity_provider_details (block)
    - web_app_units (block)
Nested transfer_web_app_customizations (aws_transfer_web_app_customization):
    Optional:
        - favicon_file
        - logo_file
        - region
        - title
EOT

  type = map(object({
    access_endpoint         = optional(string)
    region                  = optional(string)
    tags                    = optional(map(string))
    web_app_endpoint_policy = optional(string)
    endpoint_details = optional(list(object({
      vpc = optional(list(object({
        security_group_ids = optional(set(string))
        subnet_ids         = set(string)
        vpc_id             = string
      })))
    })))
    identity_provider_details = optional(list(object({
      identity_center_config = optional(list(object({
        instance_arn = optional(string)
        role         = optional(string)
      })))
    })))
    web_app_units = optional(list(object({
      provisioned = optional(number)
    })))
    transfer_web_app_customizations = optional(map(object({
      favicon_file = optional(string)
      logo_file    = optional(string)
      region       = optional(string)
      title        = optional(string)
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.transfer_web_apps) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.transfer_web_apps : [for kk in keys(coalesce(v0.transfer_web_app_customizations, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
