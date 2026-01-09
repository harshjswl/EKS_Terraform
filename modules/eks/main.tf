module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  # -----------------------------
  # Cluster Basics
  # -----------------------------
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version

  # -----------------------------
  # Networking
  # -----------------------------
  vpc_id     = var.vpc_id
  subnet_ids = var.subnet_ids

  # -----------------------------
  # Security & IAM
  # -----------------------------
  enable_irsa = true

  # -----------------------------
  # EKS Managed Node Group
  # -----------------------------
  eks_managed_node_groups = {
    default = {
      name = "default-node-group"

      min_size     = 1
      max_size     = 3
      desired_size = 2

      instance_types = ["t3.medium"]
      capacity_type  = "ON_DEMAND"

      disk_size = 20
    }
  }

  # -----------------------------
  # Cluster Endpoint Access
  # -----------------------------
  cluster_endpoint_public_access  = true
  cluster_endpoint_private_access = false

  # -----------------------------
  # Tags (VERY IMPORTANT)
  # -----------------------------
  tags = {
    Environment = "dev"
    Terraform   = "true"
    Project     = "eks-setup"
  }
}
