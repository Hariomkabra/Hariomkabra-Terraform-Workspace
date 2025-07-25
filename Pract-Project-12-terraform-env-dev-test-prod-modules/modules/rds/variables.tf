
variable "db_instance_class" {}         // The instance class for the RDS instance
variable "db_name" {}           // The database name for the RDS instance
variable "db_user" {}           // The database user for the RDS instance
variable "db_password" {}       // The database password for the RDS instance
variable "db_sg_id" {}          // The security group ID for the RDS instance
variable "subnet_ids" {}        // The list of subnet IDs for the RDS instance
variable "env" {}               // The environment (dev/test/prod)      