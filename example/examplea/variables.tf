variable "common_tags" {
  description = "This is a map type for applying tags on resources"
  type        = map(any)
}
variable "bucket_name" {
  type        = string
  description = "The name of the bucket"
}
variable "binding" {
  type = object({
    binding_members = list(string)
    binding_role    = string
  })
}
