resource "aws_instance" "ec2-ex1" {

    ami = "ami-06c68f701d8090592"
    instance_type = "t2.micro"

        tags = {

        Name = "instance-1"
        
        }
  
}