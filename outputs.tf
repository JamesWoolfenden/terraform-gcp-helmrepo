output "url" {
  description = "The Url of the helm repo"
  value       = module.storage.url
}

output "bucket" {
  description = "The repo bucket"
  value       = module.storage.bucket
}
