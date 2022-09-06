common_tags = {
"createdby" = "Terraform" }
bucket_name = "helm-charts"
project     = "pike"
binding = {
  role    = "roles/storage.objectViewer"
  members = ["user:user@example.com"]
}
