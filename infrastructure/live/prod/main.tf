module "naumanenclick" {
  source      = "../../modules/services/naumanenclick"
  domain_name = "naumanen.click"
  environment = "production"
}