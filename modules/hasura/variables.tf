variable "image_name" {
  description = "Name of the Docker image"
  type        = string
  default     = "hasura/graphql-engine:latest"
}

variable "container_name" {
  description = "Name of the Docker container"
  type        = string
  default     = "hasura"
}

variable "internal_port" {
  description = "Internal port for the container"
  type        = number
  default     = 8080
}

variable "external_port" {
  description = "External port for the container"
  type        = number
  default     = 8091
}