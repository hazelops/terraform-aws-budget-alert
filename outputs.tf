output "input_traffic_arn" {
  value = var.enabled ? aws_cloudwatch_metric_alarm.this[0].arn : ""
}

output "input_traffic_id" {
  value = var.enabled ? aws_cloudwatch_metric_alarm.this[0].id : ""
}
