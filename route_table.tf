resource "aws_route_table" "bia_rtb" {
  vpc_id = aws_vpc.bia_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.bia_igw.id
  }

  tags = {
    Name = "bia_rtb"
  }
}

resource "aws_route_table_association" "bia_rtb_assoc" {
  subnet_id      = aws_subnet.bia_subnet.id
  route_table_id = aws_route_table.bia_rtb.id
}
