resource "aws_subnet" "public_subnets" {
  #create 3 public subnets in 3 AZs at once
  count             = length(var.public_azs)
  vpc_id            = var.vpc_id
  availability_zone = var.public_azs[count.index]
  cidr_block        = "172.31.${101 + count.index}.0/24"

  tags = {
    Name = "subnet-terraform"
    type = "public"
  }
}

