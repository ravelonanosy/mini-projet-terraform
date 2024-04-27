resource "aws_eip" "lb" {
  #instance = aws_instance.example.id
  instance = var.ec2id
  domain   = "vpc"
}
