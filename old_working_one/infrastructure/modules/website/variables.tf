variable "region" {
  description = "AWS region"
  type        = string
}

variable "bucket_name" {
  description = "S3 bucket name"
  type        = string
}

variable "endpoint" {
  description = "Endpoint url"
  type        = string
}

variable "domain_name" {
  description = "Domain name"
  type        = string
}

variable "ttl" {
    description = "The time-to-live"
    type        = number
    default     = 60
}