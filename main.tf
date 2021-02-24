resource "aws_sns_topic" "this" {
  count        = var.enabled ? 1 : 0
  name         = "${var.env}-budget-alarm"
  display_name = "${var.env}-budget-alarm"
}

resource "aws_sns_topic_subscription" "this" {
  count                  = var.enabled ? 1 : 0
  endpoint               = var.subscription_endpoint
  endpoint_auto_confirms = var.endpoint_auto_confirms
  protocol               = var.subscription_endpoint_protocol
  topic_arn              = aws_sns_topic.this[0].arn
}

resource "aws_cloudwatch_metric_alarm" "this" {
  count                  = var.enabled ? 1 : 0
  alarm_name          = "account-billing-alarm-${lower(var.currency)}-${var.env}"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = var.evaluation_periods
  metric_name         = "EstimatedCharges"
  namespace           = "AWS/Billing"
  period              = var.period
  statistic           = "Maximum"
  alarm_description   = "Billing alarm account ${var.aws_account_id} >= US$ ${var.monthly_billing_threshold}"
  threshold           = var.monthly_billing_threshold
  alarm_actions       = aws_sns_topic.this.arn

  dimensions = {
    Currency      = var.currency
    LinkedAccount = var.aws_account_id
  }

  tags = var.tags
}
