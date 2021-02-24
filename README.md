# Terraform AWS Budget Alert


Terraform module that creates AWS budget alert


## Description

This module provides settings:

- Creates AWS budget alert

## Usage

### Miminal setup

```hcl

module "aws_budget_alert" {
  source = "hazelops/budget-alert/aws"
  version = "~> 1.0"
  env = var.env
  subscription_endpoint = "https://events.pagerduty.com/x-ere/<endpoint>"
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

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| aws\_account\_id | AWS account id | `string` | `""` | no |
| currency | Short notation for currency type (e.g. USD, CAD, EUR) | `string` | `"USD"` | no |
| enabled | Gives ability to enable or disable a module | `bool` | `true` | no |
| endpoint\_auto\_confirms | Endpoint endpoint for SNS topic subscription, PagerDuty (https://events.pagerduty.com/integration/<Integration Key>/enqueue) | `bool` | `true` | no |
| env | n/a | `any` | n/a | yes |
| evaluation\_periods | The number of periods over which data is compared to the specified threshold | `string` | `"1"` | no |
| monthly\_billing\_threshold | The threshold for which estimated monthly charges will trigger the metric alarm. | `string` | `"500"` | no |
| period | The period in seconds over which the specified stat is applied. By default it's 28800 seconds which is equivalent to 8 hours | `string` | `"28800"` | no |
| subscription\_endpoint | Endpoint endpoint for SNS topic subscription, PagerDuty, Slack etc. | `any` | n/a | yes |
| subscription\_endpoint\_protocol | Endpoint protocol for SNS topic subscription | `string` | `"https"` | no |
| tags | A mapping of tags to assign to all resources | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| input\_traffic\_arn | n/a |
| input\_traffic\_id | n/a |

### Terraform Module Registry

![Hazelops logo](https://avatars0.githubusercontent.com/u/63737915?s=25&v=4) [Terraform-budget-alert
](https://registry.terraform.io/modules/hazelops/budget-alert/aws/latest)
