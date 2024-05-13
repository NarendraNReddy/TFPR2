data "aws_ami" "ami_id_info" {
  most_recent = true
  owners = ["973714476881"]

   filter {
      name   = "name"
      values = ["RHEL-9-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

}  

data "aws_vpc" "default" {
  default = true
}

data "aws_vpc" "filter"{
  id="vpc-0da8745e118f58a9d"
}






