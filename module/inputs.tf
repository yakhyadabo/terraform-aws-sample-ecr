variable "repository_name" {
  description = "Name of the ECR repository"
  type = string
}

variable "services" {
  description = "vault, kafka, nginx, redis, ..."
  type = list(string)
  default = ["vault","kafka","redis","nginx", "dashboard"]
}

variable "force_delete" {
  type = bool
  default = false
}