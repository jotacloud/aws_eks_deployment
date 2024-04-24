resource "aws_eip" "eks_ngw_eip_1a" {
  tags = merge(
    var.tags,
    {
      Name = "jotacloud-eip-1a"
    }
  )
}

resource "aws_eip" "eks_ngw_eip_1b" {
  tags = merge(
    var.tags,
    {
      Name = "jotacloud-eip-1b"
    }
  )
}

resource "aws_nat_gateway" "eks_ngw_1a" {
  allocation_id = aws_eip.eks_ngw_eip_1a.id
  subnet_id     = aws_subnet.eks_subnet_public_1a.id

  tags = merge(
    var.tags,
    {
      Name = "jotacloud-ngw-1a"
    }
  )
}

resource "aws_nat_gateway" "eks_ngw_1b" {
  allocation_id = aws_eip.eks_ngw_eip_1b.id
  subnet_id     = aws_subnet.eks_subnet_public_1b.id

  tags = merge(
    var.tags,
    {
      Name = "jotacloud-ngw-1b"
    }
  )
}