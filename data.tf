data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  owners = ["099720109477"]
}


data "aws_subnet_ids" "example" {
  vpc_id = data.aws_vpc.selected.id

  tags = {
    Name        = var.subnets
    Environment = var.subnets
  }
}


data "aws_vpc" "selected" {
  tags = {
     Ambiente = var.ambiente
  }
}
