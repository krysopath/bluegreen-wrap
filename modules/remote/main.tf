variable "url" {
  type = string
}
data "external" "api-results" {
  program = ["bash", "${path.module}/api.sh"]

  query = {
    url = var.url 
  }
}

output "data" {
  value = data.external.api-results.result
}
