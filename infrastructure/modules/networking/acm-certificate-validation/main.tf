resource "aws_acm_certificate_validation" "cert_validation" {
  provider                = aws.us-east-1
  certificate_arn         = var.certificate_arn
  validation_record_fqdns = [for r in var.cert_validation : r.fqdn]
}
