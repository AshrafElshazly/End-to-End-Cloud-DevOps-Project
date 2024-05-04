output "alb-dns" {
  value = aws_lb.app_lb.dns_name
}

output "tg" {
  value = aws_lb_target_group.tg_app.arn
}

output "aws_lb_arn" {
  value = aws_lb.app_lb.arn
}
