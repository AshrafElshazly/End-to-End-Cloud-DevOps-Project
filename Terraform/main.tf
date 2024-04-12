module "vpc" {
  source = "./modules/network"
}

module "alb" {
  source             = "./modules/alb"
  vpc_id             = module.vpc.vpc_id
  public_subnet_1_id = module.vpc.public_subnet_1_id
  public_subnet_2_id = module.vpc.public_subnet_2_id
}

module "ecs" {
  source              = "./modules/ecs"
  region              = var.region
  acc_id              = var.acc_id
  ecs_cluster_name    = var.ecs_cluster_name
  ecs_service_name    = var.ecs_service_name
  desired_task_count  = var.desired_task_count
  image               = var.image
  private_subnet_1_id = module.vpc.private_subnet_1_id
  private_subnet_2_id = module.vpc.private_subnet_2_id
  tg                  = module.alb.tg
  vpc_id              = module.vpc.vpc_id
}

module "instances" {
  source              = "./modules/instances"
  vpc_id              = module.vpc.vpc_id
  private_subnet_3_id = module.vpc.private_subnet_3_id
  private_subnet_4_id = module.vpc.private_subnet_4_id
  public_subnet_id    = module.vpc.public_subnet_1_id
  ami                 = var.ami
  instance_type       = var.instance_type
  key_name            = var.key_name
}

module "s3" {
  source = "./modules/s3"
}
