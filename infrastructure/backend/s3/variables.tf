variable "bucket_name" {
    description = "Name of the bucket"
    type        = string
    default     = "taapsa-terraform-backend"
}

variable "sse_algorithm" { 
    description = "Algorithm for sse"
    type        = string
    default     = "AES256"
}

variable "dynamodb_name" {
    description = "Dynamo db name"
    type        = string
    default     = "taapsa-db-backend"
}