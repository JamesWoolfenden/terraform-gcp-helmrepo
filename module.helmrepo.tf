module "storage" {
  source          = "git::https://github.com/JamesWoolfenden/terraform-gcp-storage.git?ref=519f95b1e535157bd0c60f4692ede627061a11de"
  common_tags     = var.common_tags
  project         = data.google_project.pike.name
  bucket_name     = var.bucket_name
  binding_members = var.binding.binding_members
  binding_role    = var.binding.binding_role
  log_bucket      = ""
}
data "google_project" "pike" {}
