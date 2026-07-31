module "storage" {
  source          = "git::https://github.com/JamesWoolfenden/terraform-gcp-storage.git?ref=1739dfd1cc78c218fd744bbecf7d4c1b4eeef025" #v0.4.0
  project         = data.google_project.pike.name
  bucket_name     = var.bucket_name
  binding_members = var.binding.binding_members
  binding_role    = var.binding.binding_role
  log_bucket      = ""
}

data "google_project" "pike" {}
