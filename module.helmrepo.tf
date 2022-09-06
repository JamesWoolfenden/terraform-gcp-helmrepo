module "helmrepo" {
  source      = "JamesWoolfenden/storage/gcp"
  version     = "v0.3.34"
  common_tags = var.common_tags
  binding     = var.binding
  bucket_name = var.bucket_name
  project     = var.project
}
