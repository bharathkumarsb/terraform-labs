variable "user_names" {

  description = "Create IAM users list"
  type        = list(string)
  default     = ["sai", "nandhu", "santhosh"]

}



#terraform.tfvars
#user_names = ["bharath", "vikram", "sunil"]