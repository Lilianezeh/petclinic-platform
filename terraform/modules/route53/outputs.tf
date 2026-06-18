output "zone_id" {
  value = aws_route53_zone.main.zone_id
}

output "name_servers" {
  description = "Name servers - update these in your domain registrar"
  value       = aws_route53_zone.main.name_servers
}

output "app_url" {
  value = aws_route53_record.app.fqdn
}
