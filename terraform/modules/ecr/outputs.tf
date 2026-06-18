output "repository_urls" {
  description = "ECR repository URLs for all services"
  value       = { for k, v in aws_ecr_repository.services : k => v.repository_url }
}
