resource "aws_vpc" "bia_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "bia_vpc"
  }
}
