module "template_files" {
  source = "hashicorp/dir/template"

  base_dir = var.upload_directory
}

resource "aws_s3_bucket_object" "bucket_content" {
  for_each = module.template_files.files

  bucket       = var.bucket_name
  key          = each.key
  content_type = each.value.content_type

  # The template_files module guarantees that only one of these two attributes
  # will be set for each file, depending on whether it is an in-memory template
  # rendering result or a static file on disk.
  source  = each.value.source_path
  content = each.value.content

  # Unless the bucket has encryption enabled, the ETag of each object is an
  # MD5 hash of that object.
  etag = each.value.digests.md5
}