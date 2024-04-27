resource "aws_volume_attachment" "example" {
  device_name = "/dev/sdh"
  #volume_id   = aws_ebs_volume.example.id
  volume_id = var.ebsid
  #instance_id = aws_instance.example.id
  instance_id = var.ec2id
}
