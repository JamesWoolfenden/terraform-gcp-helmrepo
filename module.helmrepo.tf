module "storage" {
  source          = "git::https://github.com/JamesWoolfenden/terraform-gcp-storage.git?ref=e314472e46f4254b711269ee7b8983256ed861b8" #v0.4.1
  project         = data.google_project.pike.name
  bucket_name     = var.bucket_name
  binding_members = var.binding.binding_members
  binding_role    = var.binding.binding_role
  log_bucket      = ""
  kms_key_name    = var.kms_key_name
}

data "google_project" "pike" {}
