# postgres
variable "pg_container_image" {
  type        = string
  description = "Postgres server image"
}

variable "pg_container_name" {
  type        = string
  description = "Postgres server container name"
}

//variable "pg_container_command" {
//  type        = list(string)
//  description = "Postgres server startup args"
//  default     = ["server", "/data"]
//}

variable "pg_container_environment_variables" {
  type        = list(string)
  description = "Postgres server environment variables"
  default     = []
}

variable "pg_user" {
  type        = string
  description = "Postgres super user"
}
variable "pg_password" {
  type        = string
  description = "Postgres super user's password"
}
variable "pg_database" {
  type        = string
  description = "Postgres default database"
}

variable "pg_container_restart_policy" {
  type        = string
  description = "Postgres server container restart policy"
}

variable "pg_container_networks" {
  type = list(object({
    name = string
  }))
  description = "Postgres server container networks to connect to"
}

variable "pg_container_volume_name" {
  type        = string
  description = "Minio server container volume name"
}

variable "pg_container_volume_mount_path" {
  type        = string
  description = "Postgres server container volume mount path"
  default     = "/var/lib/postgresql/data"
}

variable "pg_container_port" {
  type        = number
  description = "Postgres server listening port"
  default     = 5432
}
