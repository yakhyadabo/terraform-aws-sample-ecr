output "repository_url" {
  value = [
    for ecr in aws_ecr_repository.ecr : ecr.repository_url
  ]
}