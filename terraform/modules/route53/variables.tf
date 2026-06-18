variable "env" {
  description = "Environment name"
  type        = string
}

variable "domain_name" {
  description = "Your domain name e.g. petclinic.com"
  type        = string
}

variable "alb_dns_name" {
  description = "ALB DNS name"
  type        = string
}

variable "alb_zone_id" {
  description = "ALB hosted zone ID"
  type        = string
}
