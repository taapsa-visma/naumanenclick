variable "domain_name" {
  description = "Domain name"
  type        = string
}

variable "environment" {
  description = "Environment where Route 53 is deployed"
  type        = string
}

variable "domain_validation_options" {
  description = "Domain validation options used for records"
  type        = string
}

variable "cloudfront_distribution_domain_name" {
  description = "Cloud front distribution domain name"
  type        = string
}

variable "cloudfront_distribution_hosted_zone_id" {
  description = "Cloud front distribution zone id"
  type        = string
}

variable "ttl" {
    description = "The time-to-live"
    type        = number
    default     = 60
}