common_tags = {
"createdby" = "Terraform" }
bucket_name = "helm-charts"
project     = "pike"
binding = {
  binding_role    = "roles/storage.objectViewer"
  binding_members = ["user:user@example.com"]
}
