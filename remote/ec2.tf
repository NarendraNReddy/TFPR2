resource "aws_instance" "db"{
  ami                     = "ami-090252cbe067a9e58"
  instance_type           = "t3.micro"
  vpc_security_group_ids = ["sg-035bd444d13fbad2f"] #list #you can add any SG groups. 
  #vpc_security_group_ids = var.sg_id
  

}