module "parent_a" {
  source = "./modules/ecr_repository"
  repository_name = "parent_a"
}

module "parent_b" {
  source = "./modules/ecr_repository"
  repository_name = "parent_b"
}
