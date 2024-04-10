resource "aws_cloudwatch_log_group" "my_log_group" {
  name = "/ecs/node-application"
}

resource "aws_ecs_task_definition" "my_task_definition" {
  family                   = "my-task-definition"
  cpu                      = 256
  memory                   = 512
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  execution_role_arn       = "arn:aws:iam::471112706112:role/LabRole"
  task_role_arn            = "arn:aws:iam::471112706112:role/LabRole"

  container_definitions = jsonencode([{
    name      = "node"
    image     = "${var.acc_id}.dkr.ecr.${var.region}.amazonaws.com/${var.image}"
    cpu       = 256
    memory    = 512
    essential = true
    portMappings = [{
      containerPort = 3000
      hostPort      = 3000
      protocol      = "tcp"
    }]
    logConfiguration = {
      logDriver = "awslogs"
      options = {
        "awslogs-group"         = aws_cloudwatch_log_group.my_log_group.name
        "awslogs-region"        = var.region
        "awslogs-stream-prefix" = "ecs"
      }
    }
  }])
}
