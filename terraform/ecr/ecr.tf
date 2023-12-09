
module "ecr" {
  for_each = var.ECR_REPOSITORIES
  source   = "terraform-aws-modules/ecr/aws"

  repository_name                 = each.key
  repository_image_tag_mutability = each.value.repository_image_tag_mutability
  repository_lifecycle_policy = jsonencode({
    rules = [
      {
        rulePriority = 1,
        description  = "Keep last 30 images",
        selection = {
          tagStatus   = "untagged",
          countType   = "imageCountMoreThan",
          countNumber = 30
        },
        action = {
          type = "expire"
        }
      }
    ]
  })
}
