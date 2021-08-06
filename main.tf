terraform {
  required_providers {
    aws = "~> 2.0"
  }
}

locals {
  module_version = "0.0.0"
}

resource "aws_iam_role" "role" {
  assume_role_policy = <<-EOF
  ${var.assume_role_policy}
  EOF
}

resource "aws_iam_instance_profile" "profile" {
  role = aws_iam_role.role.name
}

resource "aws_iam_role_policy" "policy" {
  role   = aws_iam_role.role.id
  policy = <<-EOF
  ${var.policy_statement}
  EOF
}
