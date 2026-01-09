variable "cluster_name" {
  description = "EkS cluster name"
  type = string
}

variable "cluster_version" {
  description = "EKS version"
  type = string
}

variable "vpc_id" {
  description = "VPC ID"
  type = string
}

variable "subnet_ids" {
  description = "Subnet IDs"
  type = list(string)
}