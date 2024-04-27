

output "sgid" {
  value = aws_security_group.allow_fw.id
}


output "sgname" {
  value = aws_security_group.allow_fw.name
}
