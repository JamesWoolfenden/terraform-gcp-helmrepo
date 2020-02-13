module "helmrepo" {
  source      = "../../"
  binding     = var.binding
  common_tags = var.common_tags
  project     = var.project
  bucket_name = var.bucket_name
}
