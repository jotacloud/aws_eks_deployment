resource "aws_subnet" "eks_subnet_private_1a" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 3)
  availability_zone = "${data.aws_region.current_region.name}a"
  tags = merge(
    var.tags, {
      Name                              = "jotacloud-sb-private-1a",
      "kubernetes.io/role/internal-elb" = 1
    }
  )
}

resource "aws_subnet" "eks_subnet_private_1b" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 4)
  availability_zone = "${data.aws_region.current_region.name}b"
  tags = merge(
    var.tags, {
      Name                              = "jotacloud-sb-private-1a",
      "kubernetes.io/role/internal-elb" = 1
    }
  )
}