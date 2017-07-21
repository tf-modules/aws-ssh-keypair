provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {}
  required_version = "~> 0.9.2"
}

resource "aws_key_pair" "ssh-key" {
  key_name   = "${var.key_name}"
  public_key = "${file("${var.key_name}.pub")}"
}
