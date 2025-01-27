output "nginx_ip_address" {
  value = module.nginx.ip_address
}

output "nginx_port" {
  value = module.nginx.port
}

output "nginx_container_id" {
  value = module.nginx.container_id
}

output "nginx_image_id" {
  value = module.nginx.image_id
}

output "hasura_container_id" {
  value = module.hasura.container_id
}