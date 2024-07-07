/*
resource "aws_ecr_repository" "devreg" {

  name                 = "devcloudlabs"
  image_tag_mutability = ["MUTABLE", "IMMUTABLE"]

  tags = {
    "Name" = "MY ECR Repo"
    Environment = "Dev" 
  }
  
  }
*/

resource "aws_ecr_repository" "cloudlabs" {
  name                 = "cloudlabs2024"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
        "Name" = "MY ECR Repo"
        Environment = "Dev"
  }

  }