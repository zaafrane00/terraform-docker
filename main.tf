terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {
  host = "npipe:////./pipe/docker_engine"
}

module "nginx" {
  source = "./modules/nginx"

  container_name = "tutorial"
  internal_port  = 80
  external_port  = 8000
}

module "hasura" {
  source = "./modules/hasura"

  container_name = "hasura"
  internal_port  = 8080
  external_port  = 8091
}


module "postgresql" {
  source = "./modules/postgresql"
}