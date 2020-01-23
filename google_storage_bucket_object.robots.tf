resource "google_storage_bucket_object" "robots" {
  name   = "robots.txt"
  source = "${path.module}/template/robots.txt"
  bucket = var.bucket_name
}
