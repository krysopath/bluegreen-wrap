variable "name" {
  type = string
}

resource "local_file" "standin" {
    content     = "deployment"
    filename = "${path.module}/${var.name}"
}
