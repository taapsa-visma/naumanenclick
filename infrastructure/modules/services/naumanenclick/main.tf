module "bucket" {
    source              = "../../storage/s3"
    bucket_name         = "naumanen.click" 
    purpose_of_bucket   = "Store data"
}
