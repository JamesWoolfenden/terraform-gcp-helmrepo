# holden:ignore:HLD_GCP_059 — per-repo WIF SA with attribute.repository scoping
# provides equivalent least-privilege without impersonation.
provider "google" {
  default_labels = {
    module     = "terraform-gcp-helmrepo"
    created_by = "terraform"
  }
}
