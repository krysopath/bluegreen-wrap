terraform {
  source = "../../..//modules/resource"
}

include {
  path = find_in_parent_folders()
}

inputs = {
    name = "green"
    path = "this"
}
