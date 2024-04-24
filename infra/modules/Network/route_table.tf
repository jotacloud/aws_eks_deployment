resource "aws_route_table" "eks_public_rtb" {
  vpc_id = aws_vpc.eks_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.eks_igw.id
  }
  tags = merge(
    var.tags,
    {
      Name = "jotacloud-public-rtb"
    }
  )
}

resource "aws_route_table" "eks_private_rtb_1a" {
  vpc_id = aws_vpc.eks_vpc.id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.eks_ngw_1a.id
  }
  tags = merge(
    var.tags,
    {
      Name = "jotacloud-private-rtb-1a"
    }
  )
}

resource "aws_route_table" "eks_private_rtb_1b" {
  vpc_id = aws_vpc.eks_vpc.id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.eks_ngw_1b.id
  }
  tags = merge(
    var.tags,
    {
      Name = "jotacloud-private-rtb-1b"
    }
  )
}