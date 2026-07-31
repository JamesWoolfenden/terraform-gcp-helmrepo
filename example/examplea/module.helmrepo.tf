# holden:ignore:HLD_TF_026 — examples intentionally use ../../ to reference the local module root
module "helmrepo" {
  source       = "../../"
  binding      = var.binding
  bucket_name  = var.bucket_name
  kms_key_name = google_kms_crypto_key.objects.id

  depends_on = [google_kms_crypto_key_iam_member.gcs_encrypt]
}
