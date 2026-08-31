locals {
  transfer_web_apps = { for k1, v1 in var.transfer_web_apps : k1 => { access_endpoint = v1.access_endpoint, endpoint_details = v1.endpoint_details, identity_provider_details = v1.identity_provider_details, region = v1.region, tags = v1.tags, web_app_endpoint_policy = v1.web_app_endpoint_policy, web_app_units = v1.web_app_units } }

  transfer_web_app_customizations = merge([
    for k1, v1 in var.transfer_web_apps : {
      for k2, v2 in coalesce(v1.transfer_web_app_customizations, {}) :
      "${k1}/${k2}" => merge(v2, {
        web_app_id = module.transfer_web_apps.transfer_web_apps_web_app_id["${k1}"]
      })
    }
  ]...)
}

module "transfer_web_apps" {
  source            = "git::https://github.com/AeternaModules/aws_transfer_web_app.git?ref=v6.58.0"
  transfer_web_apps = local.transfer_web_apps
}

module "transfer_web_app_customizations" {
  source                          = "git::https://github.com/AeternaModules/aws_transfer_web_app_customization.git?ref=v6.58.0"
  transfer_web_app_customizations = local.transfer_web_app_customizations
  depends_on                      = [module.transfer_web_apps]
}

