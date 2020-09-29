module "volumes" {
  source = "./modules/volumes"
  volume_name = var.volume_name
}

module "networks" {
  source = "./modules/networks"
  network_name = var.network_name
}

module "containers" {
  source = "./modules/containers"

  depends_on = [
    module.volumes,
    module.networks
  ]
  minio_container_networks = [{
      name = var.network_name
  }]
  pg_container_image = var.container_image
  pg_container_name = var.container_name
  pg_container_volume_name = var.volume_name
  pg_database = var.database
  pg_password = var.password
  pg_user = var.user
  pg_container_environment_variables = var.environment_variables
  pg_container_restart_policy = var.container_restart_policy
  pg_container_networks = [var.network_name]
}
