variable "region" {
  type = string
}

variable "aws_iam_instance_profile_name" {
  type = string
  default = "SSM-Full-Access"
}
