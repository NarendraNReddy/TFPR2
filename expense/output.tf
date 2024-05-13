output "db_private" {
    value = aws_instance.expense[0].private_ip
  
}
output "backend_private" {
    value = aws_instance.expense[0].private_ip
  
}

output "frontend_public" {
    value = aws_instance.expense[0].public_ip
  
}

# output "instance_names" {
#     value = var.instance_names
  
# }

# output "aws_instances" {
#   value = aws_instance.expense

# }


# output "count_info_var" {
#     value=var.instance_names
  
# }

# output "count_info_aws" {
#     value=aws_instance.expense.length
  
# }


# output "instance_info"{
#     value=var.instance_names
# }