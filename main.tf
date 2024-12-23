provider "aws" {
    region = var.region
  
}

module "demo-mod" {
    source = "git::https://github.com/Ramprasadvaral13/abc.git//modules/vpc"
    vpc-cidr = "10.0.0.0/16"
    subnets = {
        "public 1" = {
            cidr = "10.0.1.0/24"
            az = "us-east-1a"
            public = true

        }

        "private 1" = {
            cidr = "10.0.2.0/24"
            public = false
            az = "us-east-1a"
        }
    } 

    route-cidr = "0.0.0.0/0"

  
}

