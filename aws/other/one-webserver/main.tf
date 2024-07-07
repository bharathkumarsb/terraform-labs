resource "aws_security_group" "linux-sg" {
  name        = "linux-sg"
  description = "Allow HTTP traffic"

  ingress = [
    {
      description      = "Allow HTTP traffic"
      from_port        = 8080
      to_port          = 8080
      protocol         = "tcp"                # Corrected the typo here
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      security_groups  = []
      self             = false
    }
  ]

  egress = [
    {
      description      = "Allow all outbound traffic"
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      security_groups  = []
      self             = false
    }
  ]

  tags = {
    Name = "linux-sg"
  }
}



resource "aws_instance" "webinstance" {

  ami                    = "ami-06c68f701d8090592"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.linux-sg.name]

  user_data = <<-EOF

    #!/bin/bash
    echo "Hello World !" > index.html
    nohup busybox httpd -f -p 8080 &

    EOF

  tags = {

    name = "linux-web-1"

  }

}
