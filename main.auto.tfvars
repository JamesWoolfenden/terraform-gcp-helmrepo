common_tags = {
"createdby" = "Terraform" }
bucket_name = "helm-charts-authentic"
project     = "authentic-dev"
binding = {
  role    = "roles/storage.objectViewer"
  members = ["user:jw250550@ncr.com"]
}

location = "US"
