provider "aws" {
  region = "ap-south-1"     
  
}



resource "aws_instance" "instance"{
    ami = "ami-062f0cc54dbfd8ef1" # Amazon Linux 2 AMI (HVM), SSD Volume Type
    instance_type = var.instance_type
    
    tags = {
        Name = "MyInstance"
    }
}