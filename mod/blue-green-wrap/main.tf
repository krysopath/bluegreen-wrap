variable "states"  {
  type = list(string)
}

variable "module_src_path"  {
  type = string
}

module "green" {
  source = "../resource"
  count    = contains(var.states, "green") ? 1 : 0
  name = "green"
}

module "blue" {
  source = "../resource"
  count    = contains(var.states, "blue") ? 1 : 0
  name = "blue"
}
