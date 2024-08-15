resource "aws_network_interface" "db_master_interface" {
  subnet_id       = var.private_subnet_3_id
  security_groups = [aws_security_group.db_sg.id]
  private_ips     = [var.master_eni_ip]
}

resource "aws_network_interface" "db_slave_interface" {
  subnet_id       = var.private_subnet_4_id
  security_groups = [aws_security_group.db_sg.id]
  private_ips     = [var.slave_eni_ip]
}
