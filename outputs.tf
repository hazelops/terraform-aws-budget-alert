output "aws_budget_id" {
  value = var.enabled ? aws_budgets_budget.this[0].id : ""
}
