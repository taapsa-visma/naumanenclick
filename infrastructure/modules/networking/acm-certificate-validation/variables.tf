variable "certificate_arn" {
  type        = string
  description = "Certificate resource arn"
}

variable "cert_validation" {
  description = "List of FQDNs that implement the validation"
}