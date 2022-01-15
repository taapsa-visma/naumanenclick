output "dynamodb_table_name" {
  value       = aws_dynamodb_table.naumanen_click_locks.name
  description = "The name of the DynamoDB table"
}