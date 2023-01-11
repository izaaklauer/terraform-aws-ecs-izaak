variable "aws_region" {
  description = "Name of the aws region to use (i.e. 'us-east-1')"
  type        = string
}

variable "cluster_name" {
  description = "Name of aws fargate cluster"
  type        = string
}

variable "tags" {
  description = "Tags to apply to resources created by this module"
  type        = map(string)
  default = {
    terraform   = "true"
    waypoint    = "true"
  }
}