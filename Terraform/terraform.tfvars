# General Configuration
region = "us-east-1"

# region = "us-west-2"
acc_id = "471112706112"

# ECS Configuration
ecs_cluster_name   = "node-app-cluster"
ecs_service_name   = "node-app-service"
task_family        = "node-app-task"
desired_task_count = 1
image              = "node:latest"

# AMI Configuration
ami = "ami-080e1f13689e07408"

# ami           = "ami-08f7912c15ca96832"
key_name      = "vockey"
instance_type = "t2.medium"
profile       = "LabInstanceProfile"

# Database ENI IPs
master_eni_ip = "11.0.5.100"
slave_eni_ip  = "11.0.6.100"

# S3 Backup Bucket
backup_bucket_name = "backup-bucket-elshazlii"