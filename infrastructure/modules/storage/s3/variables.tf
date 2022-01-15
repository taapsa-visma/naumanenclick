variable "bucket_name" {
  description   = "Name of the S3 bucket"
  type          = string
}

variable "bucket_acl" {
  description = "ACL used for the bucket"
  type        = string
  default     = "private"
}

variable "purpose_of_bucket" {
  description = "In what way is bucket going to be used"
  type        = string
}