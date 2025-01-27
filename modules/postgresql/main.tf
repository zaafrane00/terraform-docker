terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

resource "docker_volume" "master_data" {
  name = "master-data"
}

resource "docker_network" "postgres_network" {
  name = "postgres_network"
}

resource "docker_container" "postgresql-master" {
    image= var.image_name
    name= var.master-container_name
    ports{
        internal= 5432
        external= 5432
    }

     env = var.env_variables

    healthcheck {
    test     = ["CMD-SHELL", "pg_isready -U postgres -d postgres"]
    interval = "10s"
    timeout  = "5s"
    retries  = 5
    start_period = "10s"
  }

  memory = 1024 # 1G
  memory_swap = 1024
  cpu_shares = 512 # 0.5 CPU

}