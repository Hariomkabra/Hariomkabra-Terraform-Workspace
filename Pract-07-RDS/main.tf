# main.tf
provider "aws" {
  region = "us-east-1"
}

data "aws_secretsmanager_secret_version" "rds" {
  secret_id = "rds/db-credentials"
}

locals {
  rds_credentials = jsondecode(data.aws_secretsmanager_secret_version.rds.secret_string)
}

# vpc.tf
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "subnet_a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"
}

resource "aws_subnet" "subnet_b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1b"
}

resource "aws_db_subnet_group" "rds" {
  name       = "rds-subnet-group"
  subnet_ids = [aws_subnet.subnet_a.id, aws_subnet.subnet_b.id]
}

# security.tf
resource "aws_security_group" "rds" {
  name        = "rds-sg"
  description = "Allow MySQL access"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# rds.tf
resource "aws_db_instance" "mysql" {
  allocated_storage      = 20
  engine                 = "mysql"
  engine_version         = "8.0"
  instance_class         = "db.t3.micro"
  identifier             = "my-rds-db"
  db_name                 = "mydb"
  username               = local.rds_credentials.username
  password               = local.rds_credentials.password
  db_subnet_group_name   = aws_db_subnet_group.rds.name
  vpc_security_group_ids = [aws_security_group.rds.id]
  skip_final_snapshot    = true
}

# outputs.tf
output "db_endpoint" {
  value = aws_db_instance.mysql.endpoint
}