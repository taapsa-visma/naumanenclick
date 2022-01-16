variable "domain_name" {
  description = "Domain name"
  type        = string
}

variable "environment" {
  type        = string
  description = "Environment where Route 53 is deployed"
}

variable "domain_validation_options" {
  description = "Domain validation options used for records"
}

variable "ttl" {
    description = "The time-to-live"
    type        = number
    default     = 60
}