resource "google_kms_key_ring" "helmrepo" {
  name     = "helmrepo-examplea"
  location = "us"
}
