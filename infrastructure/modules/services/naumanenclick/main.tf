module "bucket" {
  source            = "../../storage/s3"
  bucket_name       = "naumanen.click" 
  purpose_of_bucket = "Store data"
  oai_arn           = module.cloudfront.aws_cloudfront_origin_access_identity_oai_arn
}

module "acm_certificate" {
  source      = "../../networking/acm-certificate"
  domain_name = var.domain_name
  environment = var.environment
}

module "cloudfront" {
  source                      = "../../networking/cloudfront"
  domain_name                 = var.domain_name
  certificate_arn             = module.acm_certificate.acm_certificate_arn
  bucket_regional_domain_name = module.bucket.bucket_regional_domain_name
}

module "route53" {
  source                                 = "../../networking/route53"
  domain_name                            = var.domain_name
  environment                            = var.environment
  domain_validation_options              = module.acm_certificate.domain_validation_options
  cloudfront_distribution_domain_name    = module.cloudfront.cloudfront_distribution_domain_name
  cloudfront_distribution_hosted_zone_id = module.cloudfront.cloudfront_distribution_hosted_zone_id
}

module "acm_cert_validation" {
  source                  = "../../networking/acm-certificate-validation"
  certificate_arn         = module.acm_certificate.acm_certificate_arn
  cert_validation         = module.route53.cert_validation
}

module "iam_pipeline" {
  source                      = "../../iam/github-pipeline"
  environment                 = var.environment
  s3_bucket_arns              = module.bucket.bucket_arn
  cloudfront_distribution_arn = module.cloudfront.cloudfront_distribution_arn
}
