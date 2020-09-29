module "pg" {
  source = "./.."

  minio_docker_host = "unix:///var/run/docker.sock"
  container_image = "postgres:9.6-alpine"
  container_name = "postgres"

}
