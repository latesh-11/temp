region = "us-east-1"
access_key = "AKIA4SHWAWXR4X3WJI4Z"
secret_key = "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"




vpc_variables = {
  "vpc1" = {
    vpc_cidr = "192.168.0.0/16"
    tags = {
      Name = "my_vpc"
    }

  }
}

subnet_variables = {
  "public-subnet-1" = {
    subnet_cidr       = "192.168.0.0/19"
    availability_zone = "us-east-1a"
    vpc_name          = "vpc1"
    tags = {
      Name = "public-subnet-1"
    }
  }
 " public-subnet-2" = {
    subnet_cidr       = "192.168.32.0/19"
    availability_zone = "us-east-1a"
    vpc_name          = "vpc1"
    tags = {
      Name = "public-subnet-2"
    }
  }
  "private-subnet-1" = {
    subnet_cidr       = "192.168.64.0/19"
    availability_zone = "us-east-1a"
    vpc_name          = "vpc1"
    tags = {
      Name = "private-subnet-1"
    }
  }
  "private-subnet-2" = {
    subnet_cidr       = "192.168.96.0/19"
    availability_zone = "us-east-1a"
    vpc_name          = "vpc1"
    tags = {
      Name = "private-subnet-2"
    }
  }
}

