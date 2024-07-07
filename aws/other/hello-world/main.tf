resource "aws_instance" "webserver" {

  ami           = "ami-06c68f701d8090592"
  instance_type = "t2.micro"

}