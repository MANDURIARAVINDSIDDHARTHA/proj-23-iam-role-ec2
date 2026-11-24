# Project 23: IAM Role Based Access

Terraform creates an S3 bucket, an IAM role with a read-only inline policy on that bucket, an instance profile, and an EC2 instance. A user-data script runs at boot and proves the role works: S3 read is allowed; write and list-all-buckets are denied. Output was read from the EC2 console log.
