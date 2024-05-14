resource "aws_security_group" "sg" {
  name = "eks_demo"
  vpc_id = module.vpc.vpc_id
}

resource "aws_security_group_rule" "allow_all" {
  type = "ingress"
  from_port = 0
  to_port = 0
  protocol = "-1"
  security_group_id = aws_security_group.sg.id
  cidr_blocks = ["10.0.0.0/8", "172.16.0.0/12", "192.168.0.0/16"]
}

resource "aws_security_group_rule" "send_all" {
  type = "egress"
  to_port = 0
  protocol = "-1"
  from_port = 0
  security_group_id = aws_security_group.sg.id
  cidr_blocks = ["0.0.0.0/0"]
}

