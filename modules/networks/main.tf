resource "docker_network" "postgres" {
  name = var.network_name
}
