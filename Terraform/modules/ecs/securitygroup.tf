resource "aws_security_group" "app_sg" {
  name        = "app-sg"
  vpc_id      = var.vpc_id
  description = "Security group for the app-cluster"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
