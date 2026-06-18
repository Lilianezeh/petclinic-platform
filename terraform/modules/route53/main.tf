resource "aws_route53_zone" "main" {
  name = var.domain_name

  tags = {
    Name        = "petclinic-${var.env}-zone"
    Project     = "petclinic"
    Environment = var.env
    ManagedBy   = "terraform"
  }
}

resource "aws_route53_record" "app" {
  zone_id = aws_route53_zone.main.zone_id
  name    = var.env == "prod" ? var.domain_name : "${var.env}.${var.domain_name}"
  type    = "A"

  alias {
    name                   = var.alb_dns_name
    zone_id                = var.alb_zone_id
    evaluate_target_health = true
  }
}
