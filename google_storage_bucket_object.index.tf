resource "google_storage_bucket_object" "index" {
  name          = "index.yaml"
  source        = "${path.module}/template/index.yaml"
  bucket        = module.storage.bucket.name
  cache_control = "no-cache, max-age=0"
  kms_key_name  = var.kms_key_name
}
