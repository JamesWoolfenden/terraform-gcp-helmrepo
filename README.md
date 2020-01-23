[![Slalom][logo]](https://slalom.com)

# terraform-aws-inspector [![Build Status](https://github.com/JamesWoolfenden/terraform-aws-inspector/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-inspector) [![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-inspector.svg)](https://github.com/JamesWoolfenden/terraform-aws-inspector/releases/latest)

Terraform module - see example for a basic implementation.
You'll need to know the rules packages, you want the example shows you how to set up a template that has all the basic rules.

---
It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

For a basic illustration look at the example - **examplea**.

Include this repository as a module in your existing Terraform code as **module.inspector.tf**:

```terraform
module "inspector" {
  source        = "JamesWoolfenden/inspector/aws"
  version       = "0.0.2"
  common_tags   = var.common_tags
  group_arn     = aws_inspector_resource_group.group.arn
  rule          = var.rule
  template_name = var.template_name
  target_name   = var.target_name
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| common\_tags | This is to help you add tags to your cloud objects | map | n/a | yes |
| duration |  | string | n/a | yes |
| group\_arn | Contains a tagging map for instances | string | `""` | no |
| package\_arns |  | list | n/a | yes |
| rule | Event rule details | string | n/a | yes |
| target\_name | Assessment target name | string | n/a | yes |
| template\_name | Templates name | string | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| rule |  |
| target |  |
| template |  |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects

Check out these related projects.

- [terraform-aws-s3](https://github.com/jameswoolfenden/terraform-aws-s3) - S3 buckets

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-aws-inspector/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-aws-inspector/issues) to report any bugs or file feature requests.

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

[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-inspector&url=https://github.com/JamesWoolfenden/terraform-aws-inspector
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-inspector&url=https://github.com/JamesWoolfenden/terraform-aws-inspector
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-aws-inspector
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-aws-inspector
[share_email]: mailto:?subject=terraform-aws-inspector&body=https://github.com/JamesWoolfenden/terraform-aws-inspector

### Notes

For more details look athe AWS documentation here:
<https://docs.aws.amazon.com/inspector/latest/userguide/inspector_slr.html>

and here:
<https://docs.aws.amazon.com/cli/latest/reference/inspector/index.html>

Imports

```cli
terraform import module.inspector.aws_inspector_assessment_target.target
terraform import module.inspector.aws_inspector_assessment_target.target arn:aws:inspector:eu-west-1:680235478471:target/0-WXdEI6N4
terraform import module.inspector.aws_inspector_assessment_template.template arn:aws:inspector:eu-west-1:680235478471:target/0-WXdEI6N4/template/0-HWzZC5g2

aws inspector describe-assessment-targets --assessment-target-arns arn:aws:inspector:eu-west-1:680235478471:target/0-WXdEI6N4
{
    "assessmentTargets": [
        {
            "arn": "arn:aws:inspector:eu-west-1:680235478471:target/0-WXdEI6N4",
            "name": "Assessment-Target-All-Instances",
            "resourceGroupArn": "arn:aws:inspector:eu-west-1:680235478471:resourcegroup/0-DIVXsGMP",
            "createdAt": 1579347554.241,
            "updatedAt": 1579348640.217
        }
    ],
    "failedItems": {}
}

aws inspector describe-assessment-templates --assessment-template-arns arn:aws:inspector:eu-west-1:680235478471:target/0-WXdEI6N4/template/0-HWzZC5g2

terraform import module.inspector.aws_cloudwatch_event_rule.inspector Amazon_Inspector_Assessment_0-HWzZC5g2_Id3mgqa

terraform import  module.inspector.aws_cloudwatch_event_target.inspect Amazon_Inspector_Assessment_0-HWzZC5g2_Id3mgqa/0-WXdEI6N4/template/0-HWzZC5g2
```
