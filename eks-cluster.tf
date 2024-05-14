resource "random_string" "suffix" {
  length = 8
  special = false
}

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.10.0"

  cluster_name = "sauri-eks-${random_string.suffix.result}"
  cluster_version = var.kubernetes_version
  vpc_id = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets
  enable_irsa = true
  cluster_endpoint_public_access = true
  
  eks_managed_node_group_defaults = {
    ami_type = "AL2_x86_64"
    instance_types = ["t2.micro"]
    vpc_security_group_ids = [aws_security_group.sg.id]
  }

  eks_managed_node_groups = {
    node_group = {
        min_size = 1
        max_size = 4
        desired_size = 2

        instance_types = ["t2.micro"]
    }
  }


}
