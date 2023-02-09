resource "aws_db_instance" "default" {
  allocated_storage      = var.allocated_storage
  db_subnet_group_name   = aws_db_subnet_group.default.id
  engine                 = var.db_engine
  engine_version         = var.engine_version
  instance_class         = var.instance_class
  multi_az               = true
  name                   = var.db_name
  username               = var.db_username
  password               = var.db_password
  skip_final_snapshot    = true
  vpc_security_group_ids = [var.db_sg_id]
}

resource "aws_db_subnet_group" "default" {
  name       = "main"
  subnet_ids = [var.db_sub1_id, var.db_sub2_id]

  tags = {
    Name = "My DB subnet group"
  }
}
