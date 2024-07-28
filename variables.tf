variable "region" {
  description = "AWS Region"
  type        = string
}

variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
}

variable "storage" {
  description = "Storage Size in GB"
  type        = number
}

variable "security_group" {
  description = "Existing Security Group ID"
  type        = string
}

variable "iam_instance_profile" {
  description = "IAM Instance Profile Name"
  type        = string
}

variable "key_pair" {
  description = "Key Pair Name"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "ami_id" {
  description = "AMI ID"
  type        = string
}

variable "instance_name" {
  description = "Name of the Instance"
  type        = string
}

variable "additional_tag_name" {
  description = "Additional Tag Name"
  type        = string
}

variable "additional_tag_value" {
  description = "Additional Tag Value"
  type        = string
}
