resource "null_resource" "example" {
  triggers = {
    value = "A example resource that does nothing!"
  }
}

resource "aws_security_group" "test-sg" {
  name        = "test-sg"
  description = "test-sg"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}
