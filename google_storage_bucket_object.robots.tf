resource "google_storage_bucket_object" "robots" {
  name         = "robots.txt"
  source       = "${path.module}/template/robots.txt"
  bucket       = module.storage.bucket.name
  kms_key_name = var.kms_key_name
}
