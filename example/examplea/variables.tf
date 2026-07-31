
variable "bucket_name" {
  type        = string
  description = "The name of the bucket"
  validation {
    condition     = length(var.bucket_name) > 0
    error_message = "bucket name cannot be empty"
  }
}

variable "binding" {
  type = object({
    binding_members = list(string)
    binding_role    = string
  })
  description = "Permissions on the bucket"
  validation {
    condition     = length(keys(var.binding)) > 0
    error_message = "binding must contain at least one permission entry."
  }
}
