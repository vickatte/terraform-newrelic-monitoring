provider "newrelic" {
  api_key = var.newrelic_api_key
}

module "newrelic_monitoring" {
  source = "../"

  newrelic_app_name                 = var.newrelic_app_name
  newrelic_fully_qualified_app_name = var.newrelic_fully_qualified_app_name

  service_healthcheck_url = var.service_healthcheck_url
  enable_dashboard        = true

  enable_victorops_notifications   = true
  victorops_api_key                = var.victorops_api_key
  victorops_urgent_routing_key     = var.victorops_urgent_routing_key
  victorops_non_urgent_routing_key = var.victorops_non_urgent_routing_key

  alert_error_rate_enable = true
}
