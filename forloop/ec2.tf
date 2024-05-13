# 1 command line 2. tfvars 3. ENV variables 4. vari defalt values
#ec2 instance
resource "aws_instance" "expense"{
  for_each = var.instance_names #each
  ami                     = data.aws_ami.ami_info.id
  #instance_type           = var.instance_names[count.index]=="db"?"t3.small":"t3.micro"
  instance_type = each.value
  vpc_security_group_ids = ["sg-035bd444d13fbad2f"] #list #you can add any SG groups. 
  #vpc_security_group_ids = var.sg_id,merging two maps
    tags = merge(var.common_tags,
    {
       Name = each.key
       Module=each.key
    }
)
    

}
