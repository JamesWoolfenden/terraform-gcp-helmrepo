module "storage" {
  source          = "JamesWoolfenden/storage/gcp"
  version         = "v0.3.34"
  common_tags     = var.common_tags
  bucket_name     = var.bucket_name
  project         = var.project
  binding_members = var.binding.binding_members
  binding_role    = var.binding.binding_role
  log_bucket      = ""
}
