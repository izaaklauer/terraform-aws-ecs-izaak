output "ecs_cluster_name" {
  value = module.ecs.cluster_name
  description = "ECS cluster name"
}

output "log_group_name" {
  value = aws_cloudwatch_log_group.this.name
  description = "Log group name for services running on this cluster"
}