resource "azurerm_servicebus_subscription" "this" {
  name                                      = var.name
  topic_id                                  = var.topic_id
  lock_duration                             = var.lock_duration
  max_delivery_count                        = var.max_delivery_count
  auto_delete_on_idle                       = var.auto_delete_on_idle
  default_message_ttl                       = var.default_message_ttl
  enable_batched_operations                 = var.enable_batched_operations
  dead_lettering_on_filter_evaluation_error = var.dead_lettering_on_filter_evaluation_error
  dead_lettering_on_message_expiration      = var.dead_lettering_on_message_expiration
}

resource "azurerm_servicebus_subscription_rule" "default" {
  name            = "default_rule"
  subscription_id = azurerm_servicebus_subscription.this.id
  filter_type     = "CorrelationFilter"
  correlation_filter {
    label = var.name
  }
}
