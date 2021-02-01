## AWS S3 bucket Terraform creation

Terraform module which create S3 bucket on AWS with atmost features provided by Terraform AWS provider.
We can also add additional inputs like policy, logging, replication etc. as per system design. 

Here we can use count, each, for_each to iterate over same definition to create multiple buckets.

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
acl |  (Optional) The canned ACL to apply. Defaults to 'private'. Conflicts with grant | string | "private" | no
versioning | (Optional) A state of versioning.Once you version-enable a bucket, it can never return to an unversioned state | bool | none | no
server_side_encryption_configuration | Map containing server-side encryption configuration | any | {} | no
lifecycle_rule | List of maps containing configuration of object lifecycle management | any | [] | no

# Outputs

Name | Description
---- | -----------
s3_bucket_id | The name of the bucket
s3_bucket_region | The AWS region this bucket resides in
s3_bucket_bucket_domain_name | The bucket domain name. Will be of format bucketname.s3.amazonaws.com.

#   Author

managed by Amardeep Gupta
