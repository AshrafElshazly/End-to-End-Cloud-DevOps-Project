resource "aws_network_interface" "db_master_interface" {
  subnet_id       = var.private_subnet_3_id
  security_groups = [aws_security_group.db_sg.id]
  private_ips     = ["11.0.5.100"]
}

resource "aws_network_interface" "db_slave_interface" {
  subnet_id       = var.private_subnet_4_id
  security_groups = [aws_security_group.db_sg.id]
  private_ips     = ["11.0.6.100"]
}
