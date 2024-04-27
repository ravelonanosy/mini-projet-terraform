
variable "sgid" {
  type = string
}


variable "sgname" {
  type = string
}


variable "keyPath" {
  default = ".\\keyDir\\devops-nra.pem"

}

variable "aws_common_tag" {
  type        = map(any)
  description = "Set aws tag"
  default = {
    Name = "ec2-websrv"
  }
}


variable "instancetype" {
  type        = string
  description = "set aws instance type"
  default     = "t2.nano"
}
