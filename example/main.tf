module "pg" {
  source = "./.."

  minio_docker_host = "unix:///var/run/docker.sock"
  container_image = "postgres:9.6-alpine"
  container_name = "postgres"
  container_port = 5432
  container_restart_policy = "no"
  network_name = "pg-network"
  volume_name = "pg-volume"
  container_volume_mount_path = "/var/lib/postgresql/data"

  environment_variables = ["some_variable=yohohoh"]
  database = "example"
  password = "user1"
  user = "passw0rd"
}
