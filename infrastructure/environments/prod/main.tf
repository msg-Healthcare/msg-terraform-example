module "ecs" {
  source = "../../modules/ecs"
  clustername = "ecs_prod"
}

module "ecr" {
  source = "../../modules/ecr"
  repository_name = "ecr_prod"
}
