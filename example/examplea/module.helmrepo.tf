module "helmrepo" {
  source      = "../../"
  binding     = var.binding
  common_tags = var.common_tags
  bucket_name = var.bucket_name
}
