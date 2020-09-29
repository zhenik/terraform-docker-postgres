locals {
  minio_env_vars = concat(
    [
      "POSTGRES_USER=${var.pg_user}",
      "POSTGRES_PASSWORD=${var.pg_password}",
      "POSTGRES_DB=${var.pg_database}"
    ], var.pg_container_environment_variables)
}

resource "docker_container" "postgres" {
  image   = var.pg_container_image
  name    = var.pg_container_name
  env     = local.minio_env_vars
  restart = var.pg_container_restart_policy

  dynamic "networks_advanced" {
    for_each = var.pg_container_networks
    content {
      name = networks_advanced.value["name"]
    }
  }
  volumes {
    volume_name    = var.pg_container_volume_name
    container_path = var.pg_container_volume_mount_path
  }
  ports {
    internal = var.pg_container_port
    external = var.pg_container_port
  }
}
