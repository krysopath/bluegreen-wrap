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
        json = "hello"
    }
  }
}

locals {}

inputs = {
    states = ["blue"]
    path   = "${get_terragrunt_dir()}/artifact/${dependency.thing.outputs.data.json}"

}
