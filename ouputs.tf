output "appconfig_application_id" {
  value = aws_appconfig_application.appconfig.id
}

output "appconfig_environment_id" {
  value = aws_appconfig_environment.appconfig_enviroment.id
}

output "appconfig_deployment_strategy_id" {
  value = aws_appconfig_deployment_strategy.appconfig_strategy.id
}