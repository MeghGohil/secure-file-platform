output "bucket_name" {
  value = aws_s3_bucket.secure_bucket.id
}

output "iam_role_name" {
  value = aws_iam_role.s3_access_role.name
}

