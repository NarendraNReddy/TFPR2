# output "instance_info" {
#     value = aws_instance.expense
  
# }

output "ami" {
  value = data.aws_ami.ami_info.id
}


output "instance_info" {
    value = aws_instance.expense
  
}

# output "backend_private_ip" {
#     value = each.value[1]
  
# }

# output "db_private_ip" {
#     value = each.value[0]
  
# }