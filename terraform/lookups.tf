// Here we declare values we need to pull externally and we will use latter

// use default user vpc
data "aws_vpc" "default" {
  default = true
}

// pulls all subnets insie the default aws_vpc
data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

// pulls most recent image published
data "aws_ami" "ubuntu" {
  owners      = ["099720109477"]
  most_recent = true

  // whose virtualization type is hvm
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  // and whose name is:
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
}
