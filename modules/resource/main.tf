variable "name" {
  type = string
}

variable "path" {
  type = string
}

variable "file_permission" {
  type = string
}

resource "local_file" "standin" {
  content         = var.name
  filename        = var.path
  file_permission = var.file_permission
}

output "result" {
  value = local_file.standin.filename
}
