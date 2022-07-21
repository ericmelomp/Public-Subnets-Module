resource "aws_subnet" "public_subnets" {
  #It calculates the AZs you set before and create one subnet for each of them.
  count             = length(var.public_azs)
  vpc_id            = var.vpc_id
  availability_zone = var.public_azs[count.index]
  cidr_block        = "172.31.${101 + count.index}.0/24"

  tags = {
    Name = "subnet-terraform"
    type = "public"
  }
}

