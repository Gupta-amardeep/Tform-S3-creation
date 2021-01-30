resource "random_string" "bucket" {
  length  = 8
  special = false
  upper   = false
}

resource "aws_s3_bucket" "bucket" {
    count = ${length(var.bucket_name)}
    bucket_ = berlin-weather-${var.bucket_name[count.index]}-${random_string.bucket.result}
    acl    = var.acl

    versioning {
        enabled = var.versioning
    }

   lifecycle_rule {
        //id      = "log" //unique identifier for rule
        enabled = var.lifecycle_rule  // Required. Specifies lifecycle rule status

        //prefix = "log/" //Optional. Object key prefix identifying one or more object to which rule applies

        transition {    //Specifies a period in the object's transitions after objecr creation
            days          = var.transition_map.transition1
            storage_class = var.transition_storage.storage1 # or "ONEZONE_IA"
    }

        transition {    //storage class - ONEZONE_IA, STANDARD_IA, INTELLIGENT_TIERING, GLACIER, or DEEP_ARCHIVE
            days          = var.transition_map.transition2
            storage_class = var.transition_storage.storage2
    }

        expiration {   // object expire either date or days
            days = var.expiration
    }
  }


    server_side_encryption_configuration {
        rule {
            apply_server_side_encryption_by_default {
                kms_master_key_id = var.kms_master_key_id
                sse_algorithm     = var.sse_algorithm
      }
    }
  }

    tags = var.tags
}