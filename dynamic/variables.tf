#   ingress {
#     from_port        = 22 #SSH
#     to_port          = 22 #SSH
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"] #allow from everything

variable "inbound_rules" {
    type = list  
    default = [
        {
          port=22
          protocol="tcp"
          allow_cidr=["0.0.0.0/0"]
        },
        {
         port=80
          protocol="tcp"
          allow_cidr=["0.0.0.0/0"]
        },
        {
         port=8080
          protocol="tcp"
          allow_cidr=["0.0.0.0/0"]
        },
        {
         port=3306
          protocol="tcp"
          allow_cidr=["0.0.0.0/0"]
        },
    ]
  
}