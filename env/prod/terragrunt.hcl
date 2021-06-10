generate "provider" {
    path      = "state.tf"
    if_exists = "overwrite"
    contents = <<EOF
terraform {
    backend "local" {}
}
EOF
}

remote_state {
  backend = "local"
  config = {
    path = "${path_relative_to_include()}/terraform.tfstate"
  }
}

inputs = {
    file_permission = "0770"
}
