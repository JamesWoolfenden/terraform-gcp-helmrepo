output "url" {
  description = "The Url of the helm repo"
  value       = module.helmrepo.url
}

output "bucket" {
  description = "The repo bucket"
  value       = module.helmrepo.bucket
}
