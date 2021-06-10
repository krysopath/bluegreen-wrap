terraform {
  source = "../../..//modules/wrapper"
}

include {
  path = find_in_parent_folders()
}

dependency "thing" {
  config_path = "../thing"
  mock_outputs = {
    data = {
      username = "hello"
    }
  }
}

locals {}

inputs = {
  states  = ["green", "blue"]
  path    = "${get_terragrunt_dir()}/artifact/${dependency.thing.outputs.data.username}"
  content = dependency.thing.outputs.data

}
