variable "environment" {
  description = "Environment where Route 53 is deployed"
  type        = string
}

variable "domain_name" {
  description = "Name of domain for which zone is created"
  type        = string
}