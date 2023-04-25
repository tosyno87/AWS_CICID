module "acm" {
  source  = "terraform-aws-modules/acm/aws"
  version = "4.2.0"

  domain_name = trimsuffix(data.aws_route53_zone.my_domain.name, ".")
  zone_id     = data.aws_route53_zone.my_domain.zone_id

  subject_alternative_names = [var.dns_name]

  wait_for_validation = true

  tags = local.common_tags
    
  
}
# Output ACM Certificate ARN
output "acm_certificate_arn" {
  description = "ACM Certificate ARN"
  value       = module.acm.acm_certificate_arn
}