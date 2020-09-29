variable "volume_name" {
  type        = string
  description = "Docker volume name to hold data in buckets in minio"
  default     = "pg-data"
}
