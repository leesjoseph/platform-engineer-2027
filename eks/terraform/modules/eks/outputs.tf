output "cluster_endpoint" {
  description = "Endpoint URL for the EKS cluster"
  value       = aws_eks_cluster.cluster.endpoint
}

output "cluster_certificate_authority" {
  description = "Certificate authority data for the EKS cluster"
  value       = aws_eks_cluster.cluster.certificate_authority[0].data
}

output "cluster_name" {
  description = "Name of the EKS cluster"
  value       = aws_eks_cluster.cluster.name
}

output "node_group_name" {
  description = "Name of the EKS node group"
  value       = aws_eks_node_group.node_group.node_group_name
}

output "node_group_instance_type" {
  description = "EC2 instance type for the EKS node group"
  value       = aws_eks_node_group.node_group.instance_types[0]
}

output "node_group_desired_capacity" {
  description = "Desired number of nodes in the EKS node group"
  value       = aws_eks_node_group.node_group.scaling_config[0].desired_size
}

output "node_group_min_size" {
  description = "Minimum number of nodes in the EKS node group"
  value       = aws_eks_node_group.node_group.scaling_config[0].min_size
}

output "node_group_max_size" {
  description = "Maximum number of nodes in the EKS node group"
  value       = aws_eks_node_group.node_group.scaling_config[0].max_size
}

output "vpc_id" {
  description = "ID of the VPC where the EKS cluster is deployed"
  value       = var.vpc_id
}

output "subnet_ids" {
  description = "List of subnet IDs for the EKS cluster"
  value       = var.subnet_ids
}

output "private_subnet_ids" {
  description = "Private subnet IDs for EKS node group"
  value       = var.private_subnet_ids
}

output "aws_account_id" {
  description = "AWS account ID where the EKS cluster is deployed"
  value       = var.aws_account_id
}