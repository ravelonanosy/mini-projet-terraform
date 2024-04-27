
resource "aws_instance" "example" {

  #ubuntu jammy  22.04
  ami = "ami-080e1f13689e07408"

  instance_type = var.instancetype
  #instance_type = "t2.micro"

  tags = var.aws_common_tag

  #tags = {
  #Name = "ec2_instance"
  #}

  #security_groups = [var.sgid]
  security_groups = [var.sgname]


  #paire ed cles ssh
  key_name = "devops-nra"

  # Login to the ec2-user with the aws key.
  connection {
    type        = "ssh"
    user        = "ubuntu"
    password    = ""
    private_key = file(var.keyPath)
    host        = self.public_ip
    timeout     = "2m"

  }

  provisioner "file" {
    source      = "install_docker.sh"
    destination = "/tmp/install_docker.sh"
  }

  provisioner "file" {
    source      = "docker-compose.yml"
    destination = "/tmp/docker-compose.yml"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo chmod +x /tmp/install_docker.sh",
      "sudo /tmp/install_docker.sh"
    ]
  }

  #recupere IP public
  provisioner "local-exec" {
    command = "echo PUBLIC IP: ${aws_instance.example.public_ip}  >> ip_ec2.txt"
  }


}
