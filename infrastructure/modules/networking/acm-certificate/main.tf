resource "aws_acm_certificate" "cert" {
  domain_name               = var.domain_name
  subject_alternative_names = ["*.${var.domain_name}"]
  validation_method         = "DNS"

  tags = {
    created_by  = "Terraform"
    environment = var.environment
  }

  lifecycle {
    create_before_destroy = true
  }
}
