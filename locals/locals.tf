locals {
  it=var.instance_type=="db"?"t3.small":"t3.micro"
  ami_id="ami-090252cbe067a9e58"
   tags={
    Name="db"
    Module="db"

  }
}


