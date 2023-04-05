terraform {
    source = "../../modules/ec2"
}

dependency "mysql" {
  config_path = "../../modules/vpc"
}

inputs = {
    region = "us-east-2"
    ami_id = "ami-0a606d8395a538502"
    instance_type = "t2.micro"
    subnet_id = dependency.vpc.outputs.subnet_id
    name = "stg"
}

include {
  path = find_in_parent_folders()
}