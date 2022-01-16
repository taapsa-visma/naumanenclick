module "bucket" {
    source              = "../../storage/s3"
    bucket_name         = "naumanen.click" 
    purpose_of_bucket   = "Store data"
}

module "acm_certificate" {
  source      = "../../networking/acm-certificate"
  domain_name = var.domain_name
  environment = var.environment
}

module "route53" {
  source                    = "../../networking/route53"
  domain_name               = var.domain_name
  environment               = var.environment
  domain_validation_options = module.acm_certificate.domain_validation_options
}

module "acm_cert_validation" {
  source                  = "../../networking/acm-certificate-validation"
  certificate_arn         = module.acm_certificate.acm_certificate_arn
  cert_validation         = module.route53.cert_validation
}