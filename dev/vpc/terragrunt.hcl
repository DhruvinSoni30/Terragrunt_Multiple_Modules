terraform {
    source = "../../modules/vpc"
}

inputs = {
    cidr_block = "10.0.0.0/16"
    tenancy = "default"
    cidr_block_subnet = "10.0.1.0/24"
    name = "dev"
}

include {
  path = find_in_parent_folders()
}