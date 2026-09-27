variable "aws_region" {
  description = "AWS region to deploy resources in"
  type        = string
  default     = "ap-south-1" # Mumbai region - lowest latency from India
}

variable "project_name" {
  description = "Name prefix used for all resources"
  type        = string
  default     = "webapp-demo"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "instance_type" {
  description = "EC2 instance type (t2.micro is free-tier eligible)"
  type        = string
  default     = "t2.micro"
}

variable "my_ip" {
  description = "Your IP address in CIDR format, e.g. 1.2.3.4/32 (used to restrict SSH access). Get yours from whatismyip.com"
  type        = string
}

variable "alert_email" {
  description = "Email address to receive CloudWatch CPU alarm notifications"
  type        = string
}
