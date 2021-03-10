output "aws_budget_arn" {
  value = var.enabled ? aws_budgets_budget.this[0].arn : ""
}

output "aws_budget_id" {
  value = var.enabled ? aws_budgets_budget.this[0].id : ""
}
