resource "aws_instance" "workshop_server" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  vpc_security_group_ids = [ var.security_group_id ]

  tags = {
    "Name" = "WorkshopServer"
  }
}