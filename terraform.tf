# holden:ignore:HLD_TF_004 — this repo is consumed only as a child module (see example/examplea), backend belongs to the caller
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "7.42.0"
    }
  }
  required_version = ">= 1.5.0"
}
