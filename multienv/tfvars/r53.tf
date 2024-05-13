resource "aws_route53_record" "expense" {
  for_each = aws_instance.expense #each 
  zone_id = var.R53_zoneid
  name    = each.key=="frontend-prod"?var.domain_name:"${each.key}.${var.domain_name}"
  type    = "A"
  ttl     = 1
 #records = [aws_eip.lb.public_ip]
 records = startswith(each.key,"frontend")? [each.value.public_ip]:[each.value.private_ip]
}