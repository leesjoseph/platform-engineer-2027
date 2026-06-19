variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "my-eks-cluster"
}

variable "cluster_version" {
  description = "Kubernetes version for the EKS cluster"
  type        = string
  default     = "1.31"
}

variable "node_group_name" {
  description = "Name of the EKS node group"
  type        = string
  default     = "my-node-group"
}

variable "node_group_instance_type" {
  description = "EC2 instance type for the EKS node group"
  type        = string
  default     = "t3.medium"
}

variable "node_group_desired_capacity" {
  description = "Desired number of nodes in the EKS node group"
  type        = number
  default     = 2
}

variable "node_group_min_size" {
  description = "Minimum number of nodes in the EKS node group"
  type        = number
  default     = 1
}

variable "node_group_max_size" {
  description = "Maximum number of nodes in the EKS node group"
  type        = number
  default     = 3
}

variable "vpc_id" {
  description = "ID of the VPC where the EKS cluster will be deployed"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for the EKS cluster"
  type        = list(string)
}

variable "private_subnet_ids" {
  description = "Private subnet IDs for EKS node group"
  type        = list(string)
}

variable "aws_account_id" {
  description = "AWS account ID where the EKS cluster will be deployed"
  type        = string
}

variable "aws_iam_role_name" {
  description = "Name of the IAM role for EKS cluster"
  type        = string
  default     = "eks-cluster-role"
}

variable "aws_iam_node_role_name" {
  description = "Name of the IAM role for EKS node group"
  type        = string
  default     = "eks-node-group-role"
}
