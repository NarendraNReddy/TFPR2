# 1 command line 2. tfvars 3. ENV variables 4. vari defalt values
#ec2 instance
resource "aws_instance" "db"{
  ami                     = var.image_id
  instance_type           = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_SSH.id] #list #you can add any SG groups. 
  #vpc_security_group_ids = var.sg_id
    tags = var.tags

}


#security group 
resource "aws_security_group" "allow_SSH" {
  name        = var.sg_name
  description = var.sg_description
  #vpc_id      = aws_vpc.main.id  #Default VPC we are using. default VPC region.
  

  tags = var.sg_tags
#block -- ingress and outgress are block
    ingress {
    from_port        = var.sg_port #SSH
    to_port          = var.sg_port #SSH
    protocol         = var.sg_protocol
    cidr_blocks      = var.cidr_allow #allow from everything

  }

    egress {
    from_port        = 0 #ll ports
    to_port          = 0
    protocol         = "-1" #all protocols
    cidr_blocks      = ["0.0.0.0/0"]

  }
}