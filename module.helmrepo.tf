module "storage" {
  source          = "git::https://github.com/JamesWoolfenden/terraform-gcp-storage.git?ref=51a5cf36f07effb296971b5442d59e1de9fe9cf8"
  common_tags     = var.common_tags
  project         = data.google_project.pike.name
  bucket_name     = var.bucket_name
  binding_members = var.binding.binding_members
  binding_role    = var.binding.binding_role
  log_bucket      = ""
}


data google_project "pike" {}