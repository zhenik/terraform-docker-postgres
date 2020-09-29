variable "minio_docker_host" {
  type        = string
  description = "Unix/tcp socket location for docker daemon"
  default     = "unix:///var/run/docker.sock"
}

variable "container_image" {
  type        = string
  description = "Postgres server image"
  default     = "postgres:9.6-alpine"
}

variable "container_name" {
  type        = string
  description = "Postgres server container name"
}

variable "container_port" {
  type        = number
  description = "Postgres server listening port"
  default     = 5432
}

variable "network_name" {
  type        = string
  description = "Network to create to allow mc to provision buckets in minio"
  default     = "pg-network"
}

variable "volume_name" {
  type        = string
  description = "Docker volume name to hold data in buckets in minio"
  default     = "pg-volume"
}
variable "container_volume_mount_path" {
  type        = string
  description = "Postgres server container volume mount path"
  default     = "/var/lib/postgresql/data"
}


variable "environment_variables" {
  type        = list(string)
  description = "Postgres server environment variables"
  default     = []
}

variable "user" {
  type        = string
  description = "Postgres super user"
}

variable "password" {
  type        = string
  description = "Postgres super user's password"
}
variable "database" {
  type        = string
  description = "Postgres default database"
}

variable "container_restart_policy" {
  type        = string
  description = "Postgres server container restart policy"
  default     = "no"
}

variable "container_networks" {
  type = list(object({
    name = string
  }))
  description = "Postgres server container networks to connect to"
  default     = []
}


