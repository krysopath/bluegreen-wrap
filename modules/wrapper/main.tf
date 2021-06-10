variable "states" {
  type = list(string)
}

variable "path" {
  type = string
}

variable "file_permission" {
  type = string
}

module "green" {
  source = "../resource"
  count  = contains(var.states, "green") ? 1 : 0
  name   = "green"
  file_permission = var.file_permission
  path = var.path
}

module "blue" {
  source = "../resource"
  count  = contains(var.states, "blue") ? 1 : 0
  name   = "blue"
  file_permission = var.file_permission
  path = var.path
}
