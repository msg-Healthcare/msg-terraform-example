module "ecs" {
  source = "../../modules/ecs"
  clustername = "ecs_pre_dev"
}

module "ecr" {
  source = "../../modules/ecr"
  repository_name = "ecr_pre_dev"
}
