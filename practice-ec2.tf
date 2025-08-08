resource "aws_security_group" "allow_all" {
  name        = "allow_all"
  description = "Allow TLS inbound traffic and all outbound traffic"
#   vpc_id      = aws_vpc.main.id

  tags = {
    Name = "allow_all"
  }
  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}

# resource "aws_security_group" "allow_all" {
#   name        = "allow-all"
#   description = "allow all traffic"
#   ingress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }
#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }

#   tags = {
#     Name = "allow_all"
#   }
# }



# # resource "aws_security_group" "allow-all" {
# #   # ... other configuration ...
# #   name        = "allow-all"
# #   description = "Allow All traffic"

# #   ingress {
# #     from_port        = 0
# #     to_port          = 0
# #     protocol         = "-1"
# #     cidr_blocks      = ["0.0.0.0/0"]
# #     ipv6_cidr_blocks = ["::/0"]
# #   }

# #   egress {
# #     from_port        = 0
# #     to_port          = 0
# #     protocol         = "-1"
# #     cidr_blocks      = ["0.0.0.0/0"]
# #     ipv6_cidr_blocks = ["::/0"]
# #   }

# #   tags = {
# #     Name = "allow_all"
# #   }

# # }