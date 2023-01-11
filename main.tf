terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.6"
    }
  }
}

provider "aws" {
  region = var.aws_region # TODO(izaak): should we use the "current" datasource? https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region
}

module "ecs" {
  source  = "terraform-aws-modules/ecs/aws"
  version = "4.1.2"

  cluster_name = var.cluster_name
  tags         = var.tags
}

resource "aws_cloudwatch_log_group" "this" {
  name = "ecs_cluster_${var.cluster_name}"
  tags = var.tags
  retention_in_days = 7
}