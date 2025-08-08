resource "aws_instance" "RoboShop"{
  ami = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids  = [aws_security_group.allow_all.id]

  tags = var.ec2_tags

}


# resource "aws_instance" "roboshop" {
#   ami           = "ami-09c813fb71547fc4f"
#   instance_type = "t2.micro"
#   vpc_security_group_ids = [aws_security_group.allow-all.id]

#   tags = {
#     Name = "HelloWorld"
#   }
# }

resource "aws_security_group" "allow_all"{
    name = var.sg_name
    description =   var.sg_description

    tags = var.sg_tags
    
ingress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = "-1"
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }

egress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = "-1"
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }
}