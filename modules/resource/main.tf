variable "name" {
  type = string
}

variable "path" {
  type = string
}

variable "file_permission" {
  type = string
}

variable "content" {
  type = string
}

resource "local_file" "standin" {
  content         = var.content
  filename        = var.path
  file_permission = var.file_permission

  lifecycle {
    ignore_changes = [
      # Ignore changes to content for demo purpose only
      content,
      filename,
    ]
  }
}

output "result" {
  value = local_file.standin.filename
}
