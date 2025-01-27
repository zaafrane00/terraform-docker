output "ip_address" {
  description = "IP address of the Nginx container"
  value       = docker_container.nginx.network_data[0].ip_address
}

output "port" {
  description = "External port of the Nginx container"
  value       = docker_container.nginx.ports[0].external
}

output "container_id" {
  description = "ID of the Nginx container"
  value       = docker_container.nginx.id
}

output "image_id" {
  description = "ID of the Nginx image"
  value       = docker_image.nginx.id
}