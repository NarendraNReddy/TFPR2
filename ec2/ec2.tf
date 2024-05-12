#ec2 instance
resource "aws_instance" "db"{
  ami                     = "ami-090252cbe067a9e58"
  instance_type           = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_SSH.id] #list #you can add any SG groups. 

    tags = {
    Name = "db"
  }

}


#security group 
resource "aws_security_group" "allow_SSH" {
  name        = "allow_SSH"
  description = "Allow SSH inbound traffic and all outbound traffic"
  #vpc_id      = aws_vpc.main.id  #Default VPC we are using. default VPC region.
  

  tags = {
    Name = "allow_SSH"
    CreatedBy="NNR"
  }

    ingress {
    from_port        = 22 #SSH
    to_port          = 22 #SSH
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"] #allow from everything

  }

    egress {
    from_port        = 0 #ll ports
    to_port          = 0
    protocol         = "-1" #all protocols
    cidr_blocks      = ["0.0.0.0/0"]

  }
}