[![Slalom][logo]](https://slalom.com)

# terraform-gcp-helmrepo

[![Build Status](https://github.com/JamesWoolfenden/terraform-gcp-helmrepo/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-gcp-helmrepo)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-gcp-helmrepo.svg)](https://github.com/JamesWoolfenden/terraform-gcp-helmrepo/releases/latest)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![pre-commit](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)

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
  version     = "0.0.2"
  binding     = var.binding
  common_tags = var.common_tags
  project     = var.project
  bucket_name = var.bucket_name
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Providers

| Name | Version |
|------|---------|
| google | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| binding | Permissions to set on the bucket | `map` | n/a | yes |
| bucket\_name | The name of the bucket | `string` | n/a | yes |
| common\_tags | This is a map type for applying tags on resources | `map` | n/a | yes |
| project | The GCP project | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| bucket | The repo bucket |
| url | The Url of the helm repo |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

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

Copyright © 2019-2020 [Slalom, LLC](https://slalom.com)

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150

[logo]: https://gist.githubusercontent.com/JamesWoolfenden/5c457434351e9fe732ca22b78fdd7d5e/raw/15933294ae2b00f5dba6557d2be88f4b4da21201/slalom-logo.png
[website]: https://slalom.com
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/company/slalom-consulting/
[twitter]: https://twitter.com/Slalom

[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-gcp-helmrepo&url=https://github.com/JamesWoolfenden/terraform-gcp-helmrepo
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-gcp-helmrepo&url=https://github.com/JamesWoolfenden/terraform-gcp-helmrepo
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-gcp-helmrepo
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-gcp-helmrepo
[share_email]: mailto:?subject=terraform-gcp-helmrepo&body=https://github.com/JamesWoolfenden/terraform-gcp-helmrepo

### Notes

For more details look athe gcp documentation here:
<https://docs.gcp.amazon.com/helm/latest/userguide/helm_slr.html>

and here:
<https://docs.gcp.amazon.com/cli/latest/reference/helm/index.html>

Imports

```cli
terraform import module.helm.gcp_helm_assessment_target.target
terraform import module.helm.gcp_helm_assessment_target.target arn:gcp:helm:eu-west-1:680235478471:target/0-WXdEI6N4
terraform import module.helm.gcp_helm_assessment_template.template arn:gcp:helm:eu-west-1:680235478471:target/0-WXdEI6N4/template/0-HWzZC5g2

gcp helm describe-assessment-targets --assessment-target-arns arn:gcp:helm:eu-west-1:680235478471:target/0-WXdEI6N4
{
    "assessmentTargets": [
        {
            "arn": "arn:gcp:helm:eu-west-1:680235478471:target/0-WXdEI6N4",
            "name": "Assessment-Target-All-Instances",
            "resourceGroupArn": "arn:gcp:helm:eu-west-1:680235478471:resourcegroup/0-DIVXsGMP",
            "createdAt": 1579347554.241,
            "updatedAt": 1579348640.217
        }
    ],
    "failedItems": {}
}

gcp helm describe-assessment-templates --assessment-template-arns arn:gcp:helm:eu-west-1:680235478471:target/0-WXdEI6N4/template/0-HWzZC5g2

terraform import module.helm.gcp_cloudwatch_event_rule.helm Amazon_helm_Assessment_0-HWzZC5g2_Id3mgqa

terraform import  module.helm.gcp_cloudwatch_event_target.inspect Amazon_helm_Assessment_0-HWzZC5g2_Id3mgqa/0-WXdEI6N4/template/0-HWzZC5g2
```
