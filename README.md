# Terraform AWS Budget Alert


Terraform module that creates AWS budget alert


## Description

This module provides settings:

- Creates AWS budget alert

## Usage

### Miminal setup usage with Pagerduty

```hcl
module "budget_alert" {
  source = "hazelops/budget-alert/aws"
  env = var.env
  limit_amount = "200"
  subscription_endpoint = "https://events.pagerduty.com/integration/${module.pagerduty_service_infra.service_integration_key}/enqueue"
  time_period_start = "2021-01-01_00:00"
}
```

### Minimal setup usage with email address

```hcl
module "budget_alert" {
  source = "hazelops/budget-alert/aws"
  env = var.env
  limit_amount = "200"
  subscription_endpoint_protocol = "email"
  subscription_endpoint = "YourEmailAddress"
  time_period_start = "2021-01-01_00:00"
}
```

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.9 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Modules

No Modules.

## Resources

| Name |
|------|
| [aws_budgets_budget](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/budgets_budget) |
| [aws_sns_topic](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) |
| [aws_sns_topic_subscription](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| aws\_account\_id | The ID of the target AWS account for budget. Will use current user's account\_id by default if omitted | `string` | n/a | yes |
| cost\_filters\_service | Budget service cost filter, like: Amazon Elastic Compute Cloud - Compute / Amazon Relational Database Service / Amazon Redshift / Amazon ElastiCache/ Amazon Elasticsearch Service. https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-what-is.html | `string` | `""` | no |
| currency | The unit of measurement used for the budget forecast, actual spend, or budget threshold, such as dollars. Currently COST budget\_type is the only supported. | `string` | `"USD"` | no |
| enabled | Gives ability to enable or disable a module | `bool` | `true` | no |
| endpoint\_auto\_confirms | Endpoint endpoint for SNS topic subscription, PagerDuty (https://events.pagerduty.com/integration/<Integration Key>/enqueue) | `bool` | `true` | no |
| env | n/a | `any` | n/a | yes |
| include\_credit | Specifies whether to include credits in the cost budget | `bool` | `true` | no |
| include\_discount | Specifies whether a budget includes discounts | `bool` | `true` | no |
| include\_other\_subscription | Specifies whether to include other subscription costs in the cost budget | `bool` | `true` | no |
| include\_recurring | Specifies whether to include recurring costs in the cost budget | `bool` | `true` | no |
| include\_refund | Specifies whether to include refunds in the cost budget | `bool` | `true` | no |
| include\_subscription | Specifies whether to include subscriptions in the cost budget | `bool` | `true` | no |
| include\_support | Specifies whether to include support costs in the cost budget | `bool` | `true` | no |
| include\_tax | Specifies whether to include tax in the cost budget | `bool` | `true` | no |
| include\_upfront | Specifies whether to include upfront costs in the cost budget | `bool` | `true` | no |
| limit\_amount | The amount of cost or usage being measured for a budget. | `string` | n/a | yes |
| notification\_threshold | % threshold when the notification should be sent. | `string` | `100` | no |
| subscription\_endpoint | Endpoint endpoint for SNS topic subscription, PagerDuty, Slack etc. | `any` | n/a | yes |
| subscription\_endpoint\_protocol | Endpoint protocol for SNS topic subscription (https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription#protocol-support) | `string` | `"https"` | no |
| time\_period\_end | Time to end, by default it set to 2099-01-01\_00:00 | `string` | `"2099-01-01_00:00"` | no |
| time\_period\_start | Time to start. Use format: YYYY-MM-DD\_HH:MM | `string` | n/a | yes |
| time\_unit | The length of time until a budget resets the actual and forecasted spend. Valid values: MONTHLY, QUARTERLY, ANNUALLY. | `string` | `"MONTHLY"` | no |
| use\_amortized | Specifies whether a budget uses the amortized rate | `bool` | `false` | no |
| use\_blended | Specifies whether to use blended costs in the cost budget | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| aws\_budget\_id | n/a |

### Terraform Module Registry

![Hazelops logo](https://avatars0.githubusercontent.com/u/63737915?s=25&v=4) [Terraform-budget-alert
](https://registry.terraform.io/modules/hazelops/budget-alert/aws/latest)
