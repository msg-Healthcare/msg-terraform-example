resource "aws_ecr_repository" "ecr_repository" {
  name = var.repository_name
}

output "ecr_repository_url" {
  value = aws_ecr_repository.ecr_repository.repository_url
}

resource "aws_ecr_lifecycle_policy" "pkv_oci_service_policy" {
  repository = var.repository_name

  policy = <<EOF
{
    "rules": [
        {
            "rulePriority": 1,
            "description": "Expire all images that are more than 5",
            "selection": {
                "tagStatus": "any",
                "countType": "imageCountMoreThan",
                "countNumber": 5
            },
            "action": {
                "type": "expire"
            }
        }
    ]
}
EOF
}
