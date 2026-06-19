module "vpc" {
  source = "./modules/vpc"
  aws_region = var.aws_region
  environment = var.environment
  vpc_cidr = var.vpc_cidr
  public_subnets_cidr = var.public_subnets_cidr
  private_subnets_cidr = var.private_subnets_cidr
}

module "eks" {
  source = "./modules/eks"
  cluster_name = var.cluster_name
  cluster_version = var.cluster_version
  node_group_name = var.node_group_name
  node_group_instance_type = var.node_group_instance_type
  node_group_desired_capacity = var.node_group_desired_capacity
  node_group_min_size = var.node_group_min_size
  node_group_max_size = var.node_group_max_size
  vpc_id = module.vpc.vpc_id
  subnet_ids = concat(module.vpc.public_subnet_ids, module.vpc.private_subnet_ids)
  private_subnet_ids = module.vpc.private_subnet_ids
  aws_account_id = var.aws_account_id
}