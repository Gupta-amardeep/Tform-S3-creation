## AWS S3 bucket Terraform creation

Terraform module which create S3 bucket on AWS with features provided by Terraform AWS provider.

Currently these features are supported:-

1. versioning
2. access control
3. lifecycle rules
4. server-side encryption

# Terraform versions

Terraform 0.13 and above are supported

# AWS version

AWS version ~3.0 is supported

# Inputs

Name | Description | Type | Default | Required
---- | ----------- | ---- |  ------- |  --------
acl |  (Optional) The canned ACL to apply. Defaults to 'private'. Conflicts with gran | string | "private" | no

#   Author

managed by Amardeep Gupta
