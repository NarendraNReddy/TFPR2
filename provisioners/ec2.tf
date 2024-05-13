resource "aws_instance" "db"{
  ami                     = "ami-090252cbe067a9e58"
  instance_type           = "t3.micro"
  vpc_security_group_ids = ["sg-035bd444d13fbad2f"] #list #you can add any SG groups. 
  #vpc_security_group_ids = var.sg_id
  
  provisioner "local-exec" {
    command = "echo ${self.private_ip} >> private_ips.txt"
  }

# #provisioners will run you are creating resources. 
# #They will not run once the resources are created.
#   provisioner "local-exec" {
#     command = "ansible-playbook -i private_ips.txt web.yaml"
#   }

connection {
    type     = "ssh"
    user     = "ec2-user"
    password = "DevOps321"
    host     = self.public_ip
  }

    provisioner "remote-exec" {
    inline = [
      "sudo dnf install ansible -y",  
      "sudo dnf install nginx -y", 
      "sudo systemctl start nginx"
    ]
  }




}