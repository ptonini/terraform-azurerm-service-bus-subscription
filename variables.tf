variable "name" {}

variable "topic_id" {}

variable "auto_delete_on_idle" {
  default  = "P10675199DT2H48M5.4775807S"
  nullable = false
}

variable "default_message_ttl" {
  default  = "P10675199DT2H48M5.4775807S"
  nullable = false
}

variable "enable_batched_operations" {
  default = false
}

variable "lock_duration" {
  default  = "PT1M"
  nullable = false
}

variable "max_delivery_count" {
  default  = 3
  nullable = false
}

variable "dead_lettering_on_filter_evaluation_error" {
  default  = false
  nullable = false
}

variable "dead_lettering_on_message_expiration" {
  default  = true
  nullable = false
}