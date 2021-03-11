variable "enabled" {
  type        = bool
  default     = true
  description = "Gives ability to enable or disable a module"
}

variable "env" {}

variable "aws_account_id" {
  description = "The ID of the target AWS account for budget. Will use current user's account_id by default if omitted"
  type        = string
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
  description = "Endpoint protocol for SNS topic subscription (https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription#protocol-support)"
}

variable "cost_filters_service" {
  description = "Budget service cost filter, like: Amazon Elastic Compute Cloud - Compute / Amazon Relational Database Service / Amazon Redshift / Amazon ElastiCache/ Amazon Elasticsearch Service. https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-what-is.html"
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
  description = "Time to start. Use format: YYYY-MM-DD_HH:MM"
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
  description = "Specifies whether to include credits in the cost budget"
  default = true
}

variable "include_discount" {
  description = "Specifies whether a budget includes discounts"
  default = true
}

variable "include_other_subscription" {
  description = "Specifies whether to include other subscription costs in the cost budget"
  default = true
}

variable "include_recurring" {
  description = "Specifies whether to include recurring costs in the cost budget"
  default = true
}

variable "include_refund" {
  description = "Specifies whether to include refunds in the cost budget"
  default = true
}

variable "include_subscription" {
  description = "Specifies whether to include subscriptions in the cost budget"
  default = true
}

variable "include_support" {
  description = "Specifies whether to include support costs in the cost budget"
  default = true
}

variable "include_tax" {
  description = "Specifies whether to include tax in the cost budget"
  default = true
}

variable "include_upfront" {
  description = "Specifies whether to include upfront costs in the cost budget"
  default = true
}

variable "use_amortized" {
  description = "Specifies whether a budget uses the amortized rate"
  default = false
}

variable "use_blended" {
  description = "Specifies whether to use blended costs in the cost budget"
  default = false
}
