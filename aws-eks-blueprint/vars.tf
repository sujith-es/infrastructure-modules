variable "aws_region" {
  description = "The AWS region to deploy to (e.g. us-east-1)"
  type        = string
}

variable "cluster_name" {
  description = "The name of the DB"
  type        = string
}

variable "vpc_cidr" {
  description = "TThe VPC CiDR"
  type        = string
}

variable "eks_cluster_version" {
  description = "The EKS cluster version"
  type        = string
}

variable "cluster_endpoint_public_access" {
  description = "If ture the cluster endpoint acan be accessed publically"
  type        = bool
  default     = true
}

variable "resource_tags" {
  description = "Tags to set for all resources"
  type        = map(string)
  default     = {
    project     = "project-alpha",
    environment = "dev"
  }
}

variable "instance_types" {
  type = list(string)
   default     = ["m5.large"]
}

variable "managed_node_min_size" {
  type = number
   default     = 3
}

variable "managed_node_max_size" {
  type = number
   default     = 5
}

variable "managed_node_desired_size" {
  type = number
   default     = 3
}