variable "project_name" {
    type = string
}

variable "environment" {
    type = string
    default = "dev"
}

variable "instance_count" {
    type = number
}

variable "enabled" {
    type = bool
}

variable "regions" {
  type = list(string)
}

variable "tags" {
  type = map(string)
}

variable "server" {
  type = object({
    cpu    = number
    memory = number
  })
}