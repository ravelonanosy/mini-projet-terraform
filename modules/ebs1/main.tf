
resource "aws_ebs_volume" "example" {
  availability_zone = var.avzone

  #size = 10
  size = var.ebs_size

  tags = {
    Name = "ebs_volume"
  }
}
