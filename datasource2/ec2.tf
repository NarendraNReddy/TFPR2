#ec2 instance
resource "aws_instance" "db"{
  ami                     = data.aws_ami.ami_info.id
  instance_type           = "t3.micro"
  vpc_security_group_ids = ["sg-035bd444d13fbad2f"] #list #you can add any SG groups. 

    tags = {
    Name = "db"
  }

}