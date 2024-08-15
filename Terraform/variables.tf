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

# Database ENI IPs
variable "master_eni_ip" {}
variable "slave_eni_ip" {}

# S3 Backup Bucket
variable "backup_bucket_name" {}