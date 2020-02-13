module "helmrepo" {
  source      = "JamesWoolfenden/storage/gcp"
  version     = "0.2.5"
  common_tags = var.common_tags
  binding     = var.binding
  bucket_name = var.bucket_name
  project     = var.project
}
