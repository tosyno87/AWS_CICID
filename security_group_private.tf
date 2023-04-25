module "private_security_group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.16.0"

  #name        = "private_sg"
  name = "${local.name}-private-sg"
  description = "SG for HTTP & SSH ports open within VPC"
  vpc_id      = module.vpc.vpc_id
  #vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id
  # Ingress Rules & CIDR Blocks
  ingress_rules = ["ssh-tcp", "http-80-tcp", "http-8080-tcp"]
  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]
  #ingress_cidr_blocks = ["0.0.0.0/0"] # Required for NLB
  #ingress_cidr_blocks = [data.terraform_remote_state.vpc.outputs.vpc_cidr_block]
  # Egress Rule - all-all open
  egress_rules = ["all-all"]
  tags = {
    Name = "Private_SG"
  }
}

