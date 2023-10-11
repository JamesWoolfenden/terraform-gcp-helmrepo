variable "common_tags" {
  description = "This is a map type for applying tags on resources"
  type        = map(any)
}
variable "bucket_name" {
  type        = string
  description = "The name of the bucket"
}
variable "binding" {
  description = "Permissions to set on the bucket"
}
