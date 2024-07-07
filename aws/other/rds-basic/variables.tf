variable "db_password" {

    description = "RDS DB Password"
    type = string
    sensitive = "true"
  
}

variable "skip_final_snapshot" {

    type = bool
    default = false
  
}

variable "final_snapshot_identifier" {
  description = "The identifier for the final snapshot"
  type        = string
  default     = ""
}