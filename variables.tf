variable "aws_region" {
  description = "AWS region"
  type =  string
}

variable "cluster_name" {
  description = "EKS cluster name"
  type = string
}

variable "cluster_version" {
  description = "EKS version"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type = string
}

variable "subnet_ids" {
  description = "Subnet IDs"
  type =  list(string)
}