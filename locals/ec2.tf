resource "aws_instance" "db"{
  ami                     = local.ami_id
  #instance_type           = "t3.micro"
  #instance_type=var.instance_type
  instance_type=local.it
  #instance_type = local.instance_type
  vpc_security_group_ids = ["sg-035bd444d13fbad2f"] #list #you can add any SG groups. 

  tags = local.tags

}