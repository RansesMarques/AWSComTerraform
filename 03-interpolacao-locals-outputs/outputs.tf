output "bucket_name" {
  value       = aws_s3_bucket.this.bucket
  sensitive   = true
  description = "description"
  depends_on  = []
}
output "bucket_arn" {
  value       = aws_s3_bucket.this.arn
  sensitive   = true
  description = "description"
}
output "bucket_domain_name" {
  value = aws_s3_bucket.this.bucket_domain_name
}
output "ips_file-path" {
  value = "${aws_s3_bucket.this.bucket}/${aws_s3_object.this.key}"
}