resource "aws_lb" "app_lb" {
  name               = "app-lb"
  internal           = false
  load_balancer_type = "application"
  subnets            = [var.public_subnet_1_id, var.public_subnet_2_id]
  security_groups    = [aws_security_group.alb_sg.id]
}

resource "aws_lb_listener" "frontend" {
  load_balancer_arn = aws_lb.app_lb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    target_group_arn = aws_lb_target_group.tg_app.id
    type             = "forward"
  }
}
