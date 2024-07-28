provider "aws" {
  region = var.region
}

variable "region" {}
variable "instance_type" {}
variable "storage" {}
variable "security_group" {}
variable "iam_role" {}
variable "iam_instance_profile" {}
variable "key_pair" {}
variable "vpc_id" {}
variable "ami_id" {}
variable "instance_name" {}
variable "additional_tag_name" {}
variable "additional_tag_value" {}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_pair

  tags = {
    Name = var.instance_name
    "${var.additional_tag_name}" = var.additional_tag_value
  }

  root_block_device {
    volume_size = var.storage
  }

  vpc_security_group_ids = [var.security_group]
  iam_instance_profile   = aws_iam_instance_profile.example.name
}

resource "aws_iam_instance_profile" "example" {
  name = var.iam_instance_profile
  role = var.iam_role
}
