output "ec2id" {
  value = aws_instance.example.id
}


output "avzone" {
  value = aws_instance.example.availability_zone
}
