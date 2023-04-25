module "public_bastion_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.16.0"

  #name        = "public_bastion_sg"
  name = "${local.name}-public-bastion-sg"
  description = "SG for SSH ports open within VPC"
  vpc_id      = module.vpc.vpc_id
  #vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id
  # Ingress Rules & CIDR Blocks
  ingress_rules       = ["ssh-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]
  # Egress Rule - all-all open
  egress_rules = ["all-all"]
  tags = {
    Name = "Public_Bastion"
  }
}

