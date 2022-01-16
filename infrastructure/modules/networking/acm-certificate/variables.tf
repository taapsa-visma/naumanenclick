variable "environment" {
  type        = string
  description = "Environment where Route 53 is deployed"
}

variable "domain_name" {
  type        = string
  description = "Name of domain for which zone is created"
}