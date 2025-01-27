output "ip_address" {
  description = "IP address of the postgresql-master container"
  value       = docker_container.postgresql-master.network_data[0].ip_address
}

output "port" {
  description = "External port of the postgresql-master container"
  value       = docker_container.postgresql-master.ports[0].external
}

output "container_id" {
  description = "ID of the postgresql-master container"
  value       = docker_container.postgresql-master.id
}

output "container_name" {
  description = "Name of the postgresql-master container"
  value       = docker_container.postgresql-master.name
}