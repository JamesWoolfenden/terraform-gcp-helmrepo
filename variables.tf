variable "common_tags" {
  description = "This is a map type for applying tags on resources"
  type        = map
}

variable bucket_name {
  type        = string
  description = "The name of the bucket"
}

variable project {
  description = "The GCP project"
  type        = string
}

variable binding {
  description = "Permissions to set on the bucket"
  type        = map
}
