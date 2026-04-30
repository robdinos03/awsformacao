resource "aws_instance" "bia_ec2" {
  ami                    = "ami-0c1e21d82fe9c9336"
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.bia_subnet.id
  vpc_security_group_ids = [aws_security_group.bia_sg.id]

  tags = {
    Name = "bia_ec2"
  }
}
