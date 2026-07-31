
variable "bucket_name" {
  type        = string
  description = "The name of the bucket"
  validation {
    condition     = length(var.bucket_name) > 0
    error_message = "bucket name cannot be empty"
  }
}

variable "binding" {
  description = "Permissions to set on the bucket"
  type = object({
    binding_members = list(string)
    binding_role    = string
  })
  validation {
    condition     = length(keys(var.binding)) > 0
    error_message = "binding must contain at least one permission entry."
  }
}

variable "kms_key_name" {
  type        = string
  description = "KMS crypto key resource ID to encrypt the index.yaml/robots.txt objects with. The caller is responsible for provisioning the key and granting the project's GCS service agent roles/cloudkms.cryptoKeyEncrypterDecrypter on it."
  sensitive   = true
  validation {
    condition     = startswith(var.kms_key_name, "projects/")
    error_message = "kms_key_name must be a fully-qualified resource id beginning with 'projects/'"
  }
}
