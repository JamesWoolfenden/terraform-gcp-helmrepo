common_tags = {
"createdby" = "Terraform" }
bucket_name = "helm-charts"
binding = {
  binding_role    = "roles/storage.objectViewer"
  binding_members = ["user:user@example.com"]
}
