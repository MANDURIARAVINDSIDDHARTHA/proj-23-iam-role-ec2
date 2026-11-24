output "instance_id" {
  value = aws_instance.web.id
}

output "role_name" {
  value = aws_iam_role.ec2_s3.name
}
