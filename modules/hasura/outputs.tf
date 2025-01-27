output "container_id" {
  description = "ID of the Hasura container"
  value       = docker_container.hasura.id
}