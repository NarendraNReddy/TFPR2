#ec2 instance
resource "aws_instance" "db"{
  count=length(var.instance_name)
  ami                     = "ami-090252cbe067a9e58"
  #instance_type           = "t3.micro"
  instance_type = var.instance_name[count.index]=="db"?"t3.small":"t3.micro"
  #vpc_security_group_ids = [aws_security_group.allow_SSH.id] #list #you can add any SG groups. 
  vpc_security_group_ids = ["sg-035bd444d13fbad2f"]

    tags = {
    Name = var.instance_name[count.index]
  }

}
