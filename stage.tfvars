# Environment
environment = "stage"
# VPC Variables
vpc_name = "myvpc"
vpc_cidr_block = "10.0.0.0/16"
vpc_availability_zones = ["us-east-2a", "us-east-2b", "us-east-2c"]
vpc_public_subnets = ["10.0.201.0/24", "10.0.202.0/24", "10.0.203.0/24"]
vpc_private_subnets = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
vpc_database_subnets= ["10.0.251.0/24", "10.0.252.0/24", "10.0.253.0/24"]

vpc_create_database_subnet_group = true 
vpc_create_database_subnet_route_table = true   
vpc_enable_nat_gateway = true  
vpc_single_nat_gateway = true

# EC2 Instance Variables
instance_type = "t3.micro"
instance_keypair = "test_key"
private_instance_count = 2

# DNS Name
dns_name = "stagedemo5.obatos.de"

# terraform apply -input=false -var-file=stage.tfvars -auto-approve  