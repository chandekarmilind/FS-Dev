resource "aws_security_group" "sec_grp_rds" {
  name        = "rds"
  description = "rds securety group"
  vpc_id      = "${aws_vpc.main.id}"

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

/*   ingress {
    from_port = 5432
    to_port = 5432
    protocol = "tcp"
    cidr_blocks = [
      "${var.vpc_cidr_block}"]
  } */

  egress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

 /*  egress {
    from_port = 5432
    to_port = 5432
    protocol = "tcp"
    cidr_blocks = [
      "${var.vpc_cidr_block}"]
  } */
               
  tags = {
    Name = "sec_grp_rds"
  }
}

resource "aws_security_group" "alb_sg" {
  name        = "alb_sg"
  description = "ALB securety group"
  vpc_id      = "${aws_vpc.main.id}"

  ingress {
    from_port   = 31003
    to_port     = 31007
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

/*   ingress {
    from_port = 5432
    to_port = 5432
    protocol = "tcp"
    cidr_blocks = [
      "${var.vpc_cidr_block}"]
  } */

  egress {
    from_port   = 31003
    to_port     = 31007
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

 /*  egress {
    from_port = 5432
    to_port = 5432
    protocol = "tcp"
    cidr_blocks = [
      "${var.vpc_cidr_block}"]
  } */
               
  tags = {
    Name = "alb_sg"
  }
}
