output "aws_instance.web" {
    instance_id = aws_instance.web.id
    volume_id = aws_ebs_volume.web.id
}