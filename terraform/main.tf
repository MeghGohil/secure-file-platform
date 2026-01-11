terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.3.0"
}

provider "aws" {
  region = var.region
}

# S3 bucket block (existing bucket to import)
resource "aws_s3_bucket" "secure_bucket" {
  bucket = var.bucket_name
}

# IAM Role for S3 access
resource "aws_iam_role" "s3_access_role" {
  name = "SecureFileS3Role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "ec2.amazonaws.com"  # Or your preferred service
        }
      }
    ]
  })
}

# Attach policy for S3 access
resource "aws_iam_role_policy" "s3_access_policy" {
  name = "SecureFileS3Policy"
  role = aws_iam_role.s3_access_role.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = [
          "s3:PutObject",
          "s3:GetObject",
          "s3:ListBucket"
        ],
        Effect   = "Allow",
        Resource = [
          aws_s3_bucket.secure_bucket.arn,
          "${aws_s3_bucket.secure_bucket.arn}/*"
        ]
      }
    ]
  })
}

