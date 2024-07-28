provider "aws" {
  region = var.region
}

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
