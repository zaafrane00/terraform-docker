variable "image_name" {
  description = "Name of the Docker image"
  type        = string
  default     = "nginx:latest"
}

variable "keep_locally" {
  description = "Whether to keep the Docker image locally"
  type        = bool
  default     = false
}

variable "container_name" {
  description = "Name of the Docker container"
  type        = string
  default     = "tutorial"
}

variable "internal_port" {
  description = "Internal port for the container"
  type        = number
  default     = 80
}

variable "external_port" {
  description = "External port for the container"
  type        = number
  default     = 8000
}