variable "bucket_suffix" {
    type        = string
    description = "(required since we are not using 'bucket') Creates a unique bucket name beginning with the specified prefix. Conflicts with bucket."
    default     = "hourly"
}

variable "acl" {
    type        = string
    description = "(Optional) The canned ACL to apply. Defaults to private. Conflicts with grant."
    default     = "private"  //private, public-read, public-read-write, aws-exec-read, authenticated-read, and log-delivery-write. Defaults to private
}

variable "versioning" {
    type        = bool
    description = "(Optional) A state of versioning."
    default     = true //Once you version-enable a bucket, it can never return to an unversioned state. You can, however, suspend versioning on that bucket.
}

variable "transition_days" {
    type: map
    description = "(Optional) Specifies object transition period"
    default = {
        transition1 = 30
        transition2 = 60
    }
}

variable "transition_storage" {
    type: map
    description = "(Optional) Specifies object transition storage"
    default = {
        storage1 = 30
        storage2 = 60
    }
}

variable "lifecycle_status" {
    type = bool
    description = "(Required) Specifies lifecycle rule status"
    description = true
}

variable "expiration" {
    type: number
    description = "(Optional) Specifies a period in the object's expire"
    default = 90
}


variable "kms_master_key_id" {
    type        = string
    description = "(optional) The AWS KMS master key ID used for the SSE-KMS encryption. This can only be used when you set the value of sse_algorithm as aws:kms. The default aws/s3 AWS KMS master key is used if this element is absent while the sse_algorithm is aws:kms."
    default     = "aws/s3"
}

variable "sse_algorithm" {
    type        = string
    description = "(required) The server-side encryption algorithm to use. Valid values are AES256 and aws:kms"
    default     = "aws:kms"
}

variable "tags" {
    type        = map
    description = "(Optional) A mapping of tags to assign to the bucket."
    default     = {
        environment = "prod"
        terraform   = "true"
    }
}