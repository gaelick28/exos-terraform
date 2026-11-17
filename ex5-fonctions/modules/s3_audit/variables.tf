variable "bucket_name" {
  type = string
}

variable "instance_types" {
  type = list(string)
}

variable "network_public" {
  type = map(string)
}

variable "network_private" {
  type = map(string)
}