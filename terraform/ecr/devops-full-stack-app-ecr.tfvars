AWS_REGION   = "us-east-1"
ENVIRONMENT  = "devl"
APPLICATION = "devops-fullstack-app"
ECR_REPOSITORIES = {
    frontend = {
        repository_image_tag_mutability = "IMMUTABLE"
    }
    backend ={
        repository_image_tag_mutability = "IMMUTABLE"
    }
}