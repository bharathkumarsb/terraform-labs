##

output "punlic_ip" {

  value = "$aws_instance.webinstance.id"

}