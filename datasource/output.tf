output "aws_info" {
    value = data.aws_ami.ami_id_info.id
  
}

output "vpc_id" {
    value = data.aws_vpc.default.default
  
}

output "vpc_info" {
    value = data.aws_vpc.filter.dhcp_options_id
  
}



