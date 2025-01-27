terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}



resource "docker_container" "hasura" {
  image = var.image_name
  name  = var.container_name
  ports {
    internal = var.internal_port
    external = var.external_port
  }
}