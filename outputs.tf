output "s3_bucket_id" {
  value = aws_s3_bucket.bucket.*.id
}

output "s3_bucket_domain_name" {
  value = aws_s3_bucket.bucket.*.bucket_domain_name
}

output "s3_bucket_region" {
  value = aws_s3_bucket.bucket.*.region
}
