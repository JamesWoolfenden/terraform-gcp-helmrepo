# holden:ignore:HLD_TF_041 — example/test infrastructure, must stay destroyable for CI teardown;
# prevent_destroy would block terraform destroy (the key ring/key itself still can't be deleted from GCP either way).
resource "google_kms_crypto_key" "objects" {
  name                       = "helmrepo-examplea-objects"
  key_ring                   = google_kms_key_ring.helmrepo.id
  rotation_period            = "7776000s" # 90 days
  destroy_scheduled_duration = "2592000s" # 30 days
}
