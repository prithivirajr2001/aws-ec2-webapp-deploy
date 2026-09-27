output "web_server_public_ip" {
  description = "Public IP of the EC2 web server - open this in a browser"
  value       = aws_instance.web.public_ip
}

output "web_url" {
  description = "URL to view the deployed web app"
  value       = "http://${aws_instance.web.public_ip}"
}

output "s3_bucket_name" {
  description = "Name of the S3 bucket created for logs/backups"
  value       = aws_s3_bucket.app_bucket.bucket
}

output "vpc_id" {
  description = "ID of the VPC created for this project"
  value       = aws_vpc.main.id
}
