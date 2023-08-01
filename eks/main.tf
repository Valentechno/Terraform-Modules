resource "aws_eks_cluster" "eks_cluster" {
    name = var.cluster_name
    version = var.cluster_version
    
}