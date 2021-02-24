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

variable "evaluation_periods" {
  default = "1"
  description = "The number of periods over which data is compared to the specified threshold"
}

variable "period" {
  default = "28800"
  description = "The period in seconds over which the specified stat is applied. By default it's 28800 seconds which is equivalent to 8 hours"

}

variable "monthly_billing_threshold" {
  default = "500"
  description = "The threshold for which estimated monthly charges will trigger the metric alarm."
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to all resources"
  default     = {}
}

variable "currency" {
  description = "Short notation for currency type (e.g. USD, CAD, EUR)"
  type        = string
  default     = "USD"
}
