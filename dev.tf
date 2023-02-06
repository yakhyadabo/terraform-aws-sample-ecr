locals {
  repository_name = format("%s-%s", var.project.name, var.project.environment)
}


module "ecr" {
  source               = "./module"
  repository_name      = local.repository_name
}