# holden:ignore:HLD_TF_026 — examples intentionally use ../../ to reference the local module root
module "helmrepo" {
  source      = "../../"
  binding     = var.binding
  common_tags = var.common_tags
  bucket_name = var.bucket_name
}
