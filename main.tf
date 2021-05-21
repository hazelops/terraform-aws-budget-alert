resource "aws_sns_topic" "this" {
  count        = var.enabled ? 1 : 0
  name         = "${var.env}-budget-alarm"
  display_name = "${var.env}-budget-alarm"
}

resource "aws_sns_topic_subscription" "this" {
  count                  = var.enabled ? 1 : 0s
  endpoint               = var.subscription_endpoint
  endpoint_auto_confirms = var.endpoint_auto_confirms
  protocol               = var.subscription_endpoint_protocol
  topic_arn              = aws_sns_topic.this[0].arn
}

resource "aws_budgets_budget" "this" {
  count             = var.enabled ? 1 : 0
  name              = "budget-${var.cost_filters_service}-${var.env}-${provider.aws.region}-${var.time_unit}"
  budget_type       = "COST"
  limit_amount      = var.limit_amount
  limit_unit        = var.currency
  time_period_start = var.time_period_start
  time_period_end   = var.time_period_end
  time_unit         = var.time_unit

  cost_filters = {
    Service = var.cost_filters_service
  }

  notification {
    comparison_operator       = "GREATER_THAN"
    threshold                 = var.notification_threshold
    threshold_type            = "PERCENTAGE"
    notification_type         = "FORECASTED"
    subscriber_sns_topic_arns = [aws_sns_topic.this[0].arn]
  }

  cost_types {

    include_credit = var.include_credit
    include_discount = var.include_discount
    include_other_subscription = var.include_other_subscription
    include_recurring = var.include_recurring
    include_refund = var.include_refund
    include_subscription = var.include_subscription
    include_support = var.include_support
    include_tax = var.include_tax
    include_upfront = var.include_upfront
    use_amortized = var.use_amortized
    use_blended = var.use_blended
  }
}
