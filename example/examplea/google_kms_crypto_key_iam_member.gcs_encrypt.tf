# holden:ignore:HLD_GCP_210 — this is GCP's own Cloud Storage service agent (data.google_storage_project_service_account),
# the only principal capable of performing CMEK encrypt/decrypt on behalf of GCS; not a workload service account.
resource "google_kms_crypto_key_iam_member" "gcs_encrypt" {
  crypto_key_id = google_kms_crypto_key.objects.id
  role          = "roles/cloudkms.cryptoKeyEncrypterDecrypter"
  member        = "serviceAccount:${data.google_storage_project_service_account.gcs.email_address}"
}
