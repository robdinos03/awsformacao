resource "aws_internet_gateway" "bia_igw" {
  vpc_id = aws_vpc.bia_vpc.id

  tags = {
    Name = "bia_igw"
  }
}
