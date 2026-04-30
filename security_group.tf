resource "aws_security_group" "bia_sg" {
  name        = "bia_sg"
  description = "Security Group EC2 - porta 3001 aberta para 0.0.0.0/0"
  vpc_id      = aws_vpc.bia_vpc.id

  ingress {
    description = "Acesso porta 3001"
    from_port   = 3001
    to_port     = 3001
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "bia_sg"
  }
}
