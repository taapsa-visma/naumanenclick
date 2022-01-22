output "cloudfront_distribution_domain_name" {
    value = aws_cloudfront_distribution.cf.domain_name
}

output "cloudfront_distribution_hosted_zone_id" {
    value = aws_cloudfront_distribution.cf.hosted_zone_id
}

output "cloudfront_distribution_arn" {
  value = aws_cloudfront_distribution.cf.arn
}

output "aws_cloudfront_origin_access_identity_oai_arn" {
    value = aws_cloudfront_origin_access_identity.oai.iam_arn
}
