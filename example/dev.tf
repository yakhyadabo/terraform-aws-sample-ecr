locals {
  repository_name = format("%s-%s", var.project.name, var.project.environment)
  services = ["vault","cp-kafka","redis","nginx", "dashboard","grafana","prometheus"]
}


module "ecr" {
  source               = "./module"
  repository_name      = local.repository_name
  services             = local.services
  force_delete         = true
}