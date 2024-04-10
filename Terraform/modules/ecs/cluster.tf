resource "aws_ecs_cluster" "cluster" {
  name = var.ecs_cluster_name
}
