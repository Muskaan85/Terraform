output "instance_id" {
  value = aws_instance.web.id
}

output "volume_id" {
  value = aws_ebs_volume.storage.id
}
