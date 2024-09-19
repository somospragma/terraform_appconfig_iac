resource "aws_appconfig_application" "appconfig" {
  provider = aws.main
  name          = var.appconfig_name
  description   = var.appconfig_description
}

resource "aws_appconfig_configuration_profile" "appconfig_profile" {
  provider = aws.main
  name           = var.configuration_profile_name
  application_id = aws_appconfig_application.appconfig.id
  location_uri   = var.configuration_profile_location_uri
}

resource "aws_appconfig_environment" "appconfig_enviroment" {
  provider = aws.main
  name           = var.environment_name
  application_id = aws_appconfig_application.appconfig.id
}

resource "aws_appconfig_deployment_strategy" "appconfig_strategy" {
  provider = aws.main
  name                              = var.deployment_strategy_name
  deployment_duration_in_minutes    = var.deployment_duration_in_minutes
  growth_type                       = var.growth_type
  growth_factor                     = var.growth_factor
  replicate_to                      = var.replicate_to
}