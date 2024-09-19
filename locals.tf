locals {

  required_tags = {
    capacity     = var.capacity
    country      = lower(substr(var.country, 0, 2))
    env          = var.env
    owner        = var.owner
    sox          = var.sox
    availability       = var.availability
    confidentiality    = var.confidentiality
    integrity          = var.integrity
    information-domain = var.information-domain
    personal-data      = var.personal-data
    pci                = var.pci
    map-migrated       = var.map-migrated
  }

  resource_tags = merge(var.tags, local.required_tags)
  
  appconfig_policy_json = data.aws_iam_policy_document.appconfig_policy.json
}