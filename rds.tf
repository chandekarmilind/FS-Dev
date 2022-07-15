resource "aws_db_subnet_group" "db_sub_gr" {
  description = "terrafom db subnet group"
  name        = "main_subnet_group"
  subnet_ids = [
      aws_subnet.private_1.id, aws_subnet.private_2.id]
      
  tags = {
    Name = "db_sub_gr"
  }
}

data "aws_secretsmanager_secret_version" "PostgresDbLogin" {
  secret_id = "PostgresDbLogin"
}

locals {
  db_creds= jsondecode(
    data.aws_secretsmanager_secret_version.PostgresDbLogin.secret_string
  )
}

resource "aws_db_instance" "db" {
  identifier        = local.db_creds.dbClusterIdentifier
  storage_type      = "gp2"
  allocated_storage = "100"
  engine            = local.db_creds.engine
  engine_version    = "9.6.6"
  instance_class    = "db.m5d.large"
  username          = local.db_creds.username
  password          = local.db_creds.password

  vpc_security_group_ids = [
    "${aws_security_group.sec_grp_rds.id}",
  ]

  db_subnet_group_name = "${aws_db_subnet_group.db_sub_gr.id}"
  storage_encrypted    = false
  skip_final_snapshot  = true
  publicly_accessible  = false
  multi_az             = false

  tags = {
    Name = "db"
  }
}