data "aws_route53_zone" "my_domain" {
  name = "obatos.de"
}

#Output zone ID
output "my_domain_zoneid" {
  description = "The Hosted Zone id of the desired Hosted Zone"
  value       = data.aws_route53_zone.my_domain.zone_id

}

#Output domain name
output "my_domain_name" {
  description = "The domain name of the desired Hosted Zone"
  value       = data.aws_route53_zone.my_domain.name

}