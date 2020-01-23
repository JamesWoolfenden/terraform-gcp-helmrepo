resource "google_storage_bucket_object" "index" {
  name   = "index.yaml"
  source = "${path.module}/template/index.yaml"
  bucket = var.bucket_name
}
