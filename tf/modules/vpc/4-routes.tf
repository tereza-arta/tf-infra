resource "aws_route_table" "public" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = var.default_gateway
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = var.rt_tag
  }
}

resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.pub-sub.id
  route_table_id = aws_route_table.public.id
}
