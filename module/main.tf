resource "aws_ecr_repository" "ecr" {
  name                 = var.repository_name
  image_tag_mutability = "IMMUTABLE" #MUTABLE
  encryption_configuration {
    encryption_type = "KMS"
  }
  image_scanning_configuration {
    scan_on_push = true
  }
}