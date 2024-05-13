resource "aws_instance" "db"{
#   for_each = var.instance_names #each
  ami                     = "ami-090252cbe067a9e58"
  instance_type = lookup(var.instance_type, terraform.workspace)
  vpc_security_group_ids = ["sg-035bd444d13fbad2f"] #list #you can add any SG groups. 


}

