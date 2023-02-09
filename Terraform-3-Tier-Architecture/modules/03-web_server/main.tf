#Create EC2 Instance
resource "aws_instance" "webserver1" {
  ami                    = var.web_server_ami
  instance_type          = var.web_instance_type
  availability_zone      = var.availability_zone-1
  vpc_security_group_ids = [var.webserver_sg_id]
  subnet_id              = var.webserver_subnet_id_1
  user_data              = file("install_apache.sh")

  tags = {
    Name = var.instance_name
  }
}

resource "aws_instance" "webserver2" {
  ami                    = var.web_server_ami
  instance_type          = var.web_instance_type
  availability_zone      = var.availability_zone-2
  vpc_security_group_ids = [var.webserver_sg_id]
  subnet_id              = var.webserver_subnet_id_2
  user_data              = file("install_apache.sh")

  tags = {
    Name = var.instance_name
  }

}
