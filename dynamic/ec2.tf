resource "aws_security_group" "allow_SSH" {
  name        = "allow_SSH"
  description = "Allow SSH inbound traffic and all outbound traffic"
  #vpc_id      = aws_vpc.main.id  #Default VPC we are using. default VPC region.
  

  tags = {
    Name = "allow_SSH"
    CreatedBy="NNR"
  }


    dynamic "ingress"{
        for_each = var.inbound_rules
        content {
          from_port = ingress.value["port"]
          to_port = ingress.value["port"]
          protocol = ingress.value["protocol"]
          cidr_blocks = ingress.value["allow_cidr"]
        }
    }



    egress {
    from_port        = 0 #ll ports
    to_port          = 0
    protocol         = "-1" #all protocols
    cidr_blocks      = ["0.0.0.0/0"]

  }


}