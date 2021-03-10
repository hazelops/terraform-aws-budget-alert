variable "enabled" {
  type        = bool
  default     = true
  description = "Gives ability to enable or disable a module"
}

variable "env" {}

variable "aws_account_id" {
  description = "AWS account id"
  type        = string
  default     = ""
}

variable "subscription_endpoint" {
  description = "Endpoint endpoint for SNS topic subscription, PagerDuty, Slack etc."
}

variable "endpoint_auto_confirms" {
  type        = bool
  default     = true
  description = "Endpoint endpoint for SNS topic subscription, PagerDuty (https://events.pagerduty.com/integration/<Integration Key>/enqueue)"
}

variable "subscription_endpoint_protocol" {
  default     = "https"
  description = "Endpoint protocol for SNS topic subscription"
}

variable "cost_filters_service" {
  description = "Budget service cost filter, eg: Amazon Elastic Compute Cloud - Compute / Amazon Relational Database Service / Amazon Redshift / Amazon ElastiCache/ Amazon Elasticsearch Service"
  type        = string
  default     = ""
}

variable "time_unit" {
  description = "The length of time until a budget resets the actual and forecasted spend. Valid values: MONTHLY, QUARTERLY, ANNUALLY."
  type        = string
  default     = "MONTHLY"
}

variable "limit_amount" {
  description = "The amount of cost or usage being measured for a budget."
  type        = string
}

variable "currency" {
  description = "The unit of measurement used for the budget forecast, actual spend, or budget threshold, such as dollars. Currently COST budget_type is the only supported."
  type        = string
  default     = "USD"
}

variable "time_period_start" {
  description = "Time to start"
  type        = string
}

variable "time_period_end" {
  description = "Time to end, by default it set to 2099-01-01_00:00"
  type        = string
  default     = "2099-01-01_00:00"
}

variable "notification_threshold" {
  description = "% threshold when the notification should be sent."
  type        = string
  default     = 100
}

variable "include_credit" {
  description = ""
  default = true
}

variable "include_discount" {
  description = "Specifies whether a budget includes discounts"
  default = true
}

variable "include_other_subscription" {
  description = "Whether to include other subscription costs in the cost budget"
  default = true
}

variable "include_recurring" {
  description = "Whether to include recurring costs in the cost budget"
  default = true
}

variable "include_refund" {
  description = "Whether to include refunds in the cost budget"
  default = true
}

variable "include_subscription" {
  description = "Whether to include subscriptions in the cost budget"
  default = true
}

variable "include_support" {
  description = "Whether to include support costs in the cost budget"
  default = true
}

variable "include_tax" {
  description = "Whether to include tax in the cost budget"
  default = true
}

variable "include_upfront" {
  description = "Whether to include upfront costs in the cost budget"
  default = true
}

variable "use_amortized" {
  description = "Whether a budget uses the amortized rate"
  default = false
}

variable "use_blended" {
  description = "Whether to use blended costs in the cost budget"
  default = false
}
