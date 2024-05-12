# EC2 insstance info 
# 1 command line 2. tfvars 3. ENV variables 4. vari defalt values
variable "image_id" {
    type=string 
    #default = "ami-090252cbe067a9e58" #if commented out,  It will ask for default value
    default = "ami-090252cbe067a9e58"
    description = "RHEL-9 AMI ID"
}

variable "instance_type" {
    type=string 
    default = "t3.micro"
  
}

variable "tags" {
    type=map
    default = {
        Project="expense"
        Module="db"
        Environment="Dev"
        Name = "db"
    }
  
}

# variable "sg_id" {
#     default = [sg-035bd444d13fbad2f]
  
# }

variable "sg_name" {
    default = "allow_SSH"
  
}

variable "sg_description" {
  default = "Allow SSH inbound traffic and all outbound traffic"
}

variable "sg_tags" {
    type = map 
    default = {
        Name = "allow_SSH"
        CreatedBy="NNR"
    }
  
}

variable "sg_port" {
    type = number
    default = 22 
  
}

variable "sg_protocol" {
  default = "tcp"
}

variable "cidr_allow" {
    type = list(string)
  default = ["0.0.0.0/0"]
}

# name        = "allow_SSH"
#   description = "Allow SSH inbound traffic and all outbound traffic"
#   #vpc_id      = aws_vpc.main.id  #Default VPC we are using. default VPC region.
  

#   tags = {
#     Name = "allow_SSH"
#     CreatedBy="NNR"
#   }

#     ingress {
#     from_port        = 22 #SSH
#     to_port          = 22 #SSH
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"] #allow from everything

#   }


