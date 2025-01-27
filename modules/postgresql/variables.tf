variable "master-container_name" {
  description = "The name of the container"
  type        = string
  default = "postgresql-master"
}


variable "slave-container_name" {
  description = "The name of the container"
  type        = string
  default = "postgresql-slave"
}

variable "image_name"{
    description= "The name of the image"
    type = string
    default = "bitnami/postgresql:latest"

}

variable "env_variables"{
    description = "Environment variables for the container"
    type = list(string)
    default= [
        "POSTGRESQL_PGAUDIT_LOG=READ,WRITE",
        "POSTGRESQL_LOG_HOSTNAME=true",
        "POSTGRESQL_REPLICATION_MODE=master",
        "POSTGRESQL_REPLICATION_USER=repl_user",
        "POSTGRESQL_REPLICATION_PASSWORD=repl_user",
        "POSTGRESQL_USERNAME=postgres",
        "POSTGRESQL_PASSWORD=mysecretpassword",
        "POSTGRESQL_DATABASE=postgres",
        "ALLOW_EMPTY_PASSWORD=yes"
    ]
}