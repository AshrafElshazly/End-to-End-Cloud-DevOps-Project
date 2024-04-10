variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "11.0.0.0/16"
}

variable "public_subnet_cidr_blocks" {
  description = "The CIDR blocks for the public subnets"
  type        = list(string)
  default     = ["11.0.1.0/24", "11.0.2.0/24"]
}

variable "private_subnet_cidr_blocks" {
  description = "The CIDR blocks for the private subnets"
  type        = list(string)
  default     = ["11.0.3.0/24", "11.0.4.0/24", "11.0.5.0/24", "11.0.6.0/24"]
}

variable "availability_zones" {
  description = "The availability zones to use for the subnets"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
  # default = ["us-west-2a", "us-west-2b"]
}
