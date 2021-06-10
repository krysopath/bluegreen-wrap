terraform {
  source = "../../..//modules/wrapper"
}

include {
  path = find_in_parent_folders()
}

dependency "thing" {
  config_path = "../thing"
  mock_outputs = {
    result = "temp-a"
  }
}

locals {
    _path = "${get_terragrunt_dir()}/artifact"
}

inputs = {
    states = ["blue"]
    path   = "${local._path}/${dependency.thing.outputs.result}"

}
