module "website" {
    source      = "../modules/website"
    endpoint    = "naumanen.click"
    domain_name = "naumanen.click"
    region      = var.region
    bucket_name = "naumanen.click" 
}