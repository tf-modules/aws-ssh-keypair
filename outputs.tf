output "name" {
  value = "${aws_key_pair.ssh-key.key_name}"
}

output "public_key" {
  value = "${file("${var.key_name}.pub")}"
}
