output "s3_bucket_arn" {
  value       = aws_s3_bucket.naumanen_click_state.arn
  description = "The ARN of the S3 bucket"
}