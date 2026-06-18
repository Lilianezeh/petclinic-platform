provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source     = "../../modules/vpc"
  env        = var.env
  aws_region = var.aws_region
}

module "ecr" {
  source = "../../modules/ecr"
  env    = var.env
}

module "eks" {
  source        = "../../modules/eks"
  env           = var.env
  vpc_id        = module.vpc.vpc_id
  subnet_ids    = module.vpc.public_subnet_ids
  instance_type = "t3.small"
  desired_nodes = 2
  min_nodes     = 1
  max_nodes     = 3
}
