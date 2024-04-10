# General Configuration
variable "region" {}
variable "acc_id" {}

# ECS Configuration
variable "ecs_cluster_name" {}
variable "ecs_service_name" {}
variable "task_family" {}
variable "desired_task_count" {}

# AMI Configuration
variable "ami" {}
variable "image" {}
variable "key_name" {}
variable "instance_type" {}
variable "profile" {}
