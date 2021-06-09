terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.1.0"
    }
  }
}

provider "null" {
  # Configuration options
}

module "bg" {
  source = "../../mod/blue-green-wrap"
  states = ["green"]
  module_src_path = "${path.module}/../resource"

}
