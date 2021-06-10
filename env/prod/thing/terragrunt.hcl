terraform {
  source = "../../..//modules/remote"
}

include {
  path = find_in_parent_folders()
}

inputs = {
    url = "https://randomuser.me/api/"
}
