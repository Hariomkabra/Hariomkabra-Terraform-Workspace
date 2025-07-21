resource "aws_db_instance" "default" {
  allocated_storage       = 10
<<<<<<< HEAD
   identifier             = "book-rds"
=======
   identifier =             "book-rds"
>>>>>>> fb9a86a18d13cc1fa1805f90b45eb097ad308609
  db_name                 = "mydb"
  engine                  = "mysql"
  engine_version          = "8.0"
  instance_class          = "db.t3.micro"
  username                = data.aws_secretsmanager_secret_version.rds_secret_version.secret_string["username"]
  password                = data.aws_secretsmanager_secret_version.rds_secret_version.secret_string["password"]
  db_subnet_group_name    = aws_db_subnet_group.sub-grp.id
  parameter_group_name    = "default.mysql8.0"
  

  # Enable backups and retention
  backup_retention_period  = 7   # Retain backups for 7 days
  backup_window            = "02:00-03:00" # Daily backup window (UTC)

  # Enable monitoring (CloudWatch Enhanced Monitoring)
  #monitoring_interval      = 60  # Collect metrics every 60 seconds
  #monitoring_role_arn      = aws_iam_role.rds_monitoring.arn

  # Enable performance insights
#   performance_insights_enabled          = true
#   performance_insights_retention_period = 7  # Retain insights for 7 days

  # Maintenance window
  maintenance_window = "sun:04:00-sun:05:00"  # Maintenance every Sunday (UTC)

  # Enable deletion protection (to prevent accidental deletion)
  deletion_protection = true

  # Skip final snapshot
  skip_final_snapshot = true
  depends_on = [ aws_db_subnet_group.sub-grp ]
}

resource "aws_vpc" "name" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name = "dev"
    }
  
}
resource "aws_subnet" "subnet-1" {
    vpc_id = aws_vpc.name.id
    cidr_block = "10.0.0.0/24"
    availability_zone = "us-east-1a"
  
}
resource "aws_subnet" "subnet-2" {
    vpc_id = aws_vpc.name.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-east-1b"
  
}
resource "aws_db_subnet_group" "sub-grp" {
  name       = "mycutsubnet"
  subnet_ids = [aws_subnet.subnet-1.id, aws_subnet.subnet-2.id]

  tags = {
    Name = "My DB subnet group"
  }
}
resource "aws_secretsmanager_secret" "rds_secret" {
  name        = "book-rds-secret"
  description = "RDS credentials for book-rds instance"
}

resource "aws_secretsmanager_secret_version" "rds_secret_version" {
  secret_id     = aws_secretsmanager_secret.rds_secret.id
  secret_string = jsonencode({
    engine   = "mysql"
    host     = aws_db_instance.default.address
    username = "admin"
    password = "Cloud123"
    dbname   = "mydb"
    port     = 3306
  })
  depends_on = [aws_db_instance.default]
<<<<<<< HEAD
}
=======
}
>>>>>>> fb9a86a18d13cc1fa1805f90b45eb097ad308609
