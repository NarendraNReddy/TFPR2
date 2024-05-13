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

variable "environment" {
    #default = "dev"
}

# variable "instance_names" {
#     type = list
#      default = ["db","backend","frontend"]

# }

variable "instance_names" {
  type = map 
  default = {
    # db="t3.small"
    # backend="t3.micro"
    # frontend="t3.micro"
  }
}


variable "common_tags" {
    type=map
    default = {
        # Project="expense"
        # Environment="Dev"
        # terraform=true 
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

#R53 variables

variable "R53_zoneid" {
    default = "Z07723142N736V4HE6Z3C"
  
}

variable "domain_name" {
    default = "daws78s-nnr.online"
  
}

