resource "aws_instance" "db_master" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  user_data     = "./userdata.sh"
  network_interface {
    network_interface_id = aws_network_interface.db_master_interface.id
    device_index         = 0
  }
  tags = {
    Name = "db_master"
  }
}

resource "aws_instance" "db_slave" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  user_data     = "./database.sh"
  network_interface {
    network_interface_id = aws_network_interface.db_slave_interface.id
    device_index         = 0
  }
  tags = {
    Name = "db_slave"
  }
}
