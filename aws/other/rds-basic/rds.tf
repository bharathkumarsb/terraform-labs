
# Create an RDS instance
resource "aws_db_instance" "default" {
  allocated_storage    = 20                 # Define the storage size (in GB)
  storage_type         = "gp2"              # Define the storage type
  engine               = "mysql"            # Specify the database engine
  engine_version       = "8.0"              # Specify the engine version
  instance_class       = "db.t3.micro"      # Specify the instance class
  db_name              = "cloudlabs"# Set the DB name
  username             = "dbuser"             # Set the DB username
  password             = var.db_password       # Set the DB password
  parameter_group_name = "default.mysql8.0" # Choose the parameter group

##additional

# Use variables for final snapshot configuration
  skip_final_snapshot     = var.skip_final_snapshot
  final_snapshot_identifier = var.final_snapshot_identifier != "" ? var.final_snapshot_identifier : null

}