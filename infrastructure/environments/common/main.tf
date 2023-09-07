module "service_a" {
  source = "./modules/ecr_repository"
  repository_name = "service_a"
}

module "service_b" {
  source = "./modules/ecr_repository"
  repository_name = "service_b"
}
