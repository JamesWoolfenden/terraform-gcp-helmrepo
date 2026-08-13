# terraform-gcp-helmrepo

[![Build Status](https://github.com/JamesWoolfenden/terraform-gcp-helmrepo/workflows/Verify/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-gcp-helmrepo)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-gcp-helmrepo.svg)](https://github.com/JamesWoolfenden/terraform-gcp-helmrepo/releases/latest)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)

Terraform module - see example for a basic implementation, to create a Helm repo in GCP storage.
You'll need to know the rules packages, you want the example shows you how to set up a template that has all the basic rules.

---
It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

For a basic illustration look at the example - **examplea**.

Include this repository as a module in your existing Terraform code as **module.helm.tf**:

```terraform
module "helm" {
  source      = "JamesWoolfenden/helm/gcp"
  binding     = var.binding
  bucket_name = var.bucket_name
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

| Name | Source | Version |
| ---- | ------ | ------- |
| <a name="module_storage"></a> [storage](#module\_storage) | git::https://github.com/JamesWoolfenden/terraform-gcp-storage.git | e314472e46f4254b711269ee7b8983256ed861b8 |

## Resources

| Name | Type |
| ---- | ---- |
| [google_storage_bucket_object.index](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket_object) | resource |
| [google_storage_bucket_object.robots](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket_object) | resource |
| [google_project.pike](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/project) | data source |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_binding"></a> [binding](#input\_binding) | Permissions to set on the bucket | <pre>object({<br/>    binding_members = list(string)<br/>    binding_role    = string<br/>  })</pre> | n/a | yes |
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | The name of the bucket | `string` | n/a | yes |
| <a name="input_kms_key_name"></a> [kms\_key\_name](#input\_kms\_key\_name) | KMS crypto key resource ID to encrypt the index.yaml/robots.txt objects with. The caller is responsible for provisioning the key and granting the project's GCS service agent roles/cloudkms.cryptoKeyEncrypterDecrypter on it. | `string` | n/a | yes |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_bucket"></a> [bucket](#output\_bucket) | The repo bucket |
| <a name="output_url"></a> [url](#output\_url) | The Url of the helm repo |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Role and Permissions

<!-- BEGINNING OF PRE-COMMIT-PIKE DOCS HOOK -->
The Terraform resource required is:

```golang
# apply role
resource "google_project_iam_custom_role" "terraform_pike" {
  project     = "pike-477416"
  role_id     = "terraform_pike"
  title       = "terraform_pike"
  description = "A user with least privileges"
  permissions = [
    "resourcemanager.projects.get",
    "storage.buckets.create",
    "storage.buckets.delete",
    "storage.buckets.get",
    "storage.buckets.getIamPolicy",
    "storage.buckets.setIamPolicy",
    "storage.buckets.update",
    "storage.objects.create",
    "storage.objects.delete",
    "storage.objects.get",
    "storage.objects.list"
  ]
}

# plan role
resource "google_project_iam_custom_role" "terraform_pike_plan" {
  project     = "pike-477416"
  role_id     = "terraform_pike_plan"
  title       = "terraform_pike_plan"
  description = "A user with least privileges"
  permissions = [
    "resourcemanager.organizations.get",
    "resourcemanager.projects.get",
    "storage.buckets.get",
    "storage.buckets.getIamPolicy",
    "storage.objects.list"
  ]
}


```
<!-- END OF PRE-COMMIT-PIKE DOCS HOOK -->

## Information

## Related Projects

Check out these related projects.

- [terraform-gcp-s3](https://github.com/jameswoolfenden/terraform-gcp-s3) - S3 buckets

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-gcp-helmrepo/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-gcp-helmrepo/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2026 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage] |

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
