resource "aws_security_group" "tf-sg" {
  name        = var.sg_name
  description = var.sg_desc
  vpc_id      = aws_vpc.vpc.id

  tags = {
    Name = "SG example"
  }
}

resource "aws_vpc_security_group_ingress_rule" "example" {
  count             = var.sg_ingress_cnt
  description       = "Allow-${var.ing_port_range[count.index]}-port-for-incoming-traffic"
  security_group_id = aws_security_group.tf-sg.id
  cidr_ipv4         = var.default_gateway
  from_port         = var.ing_port_range[count.index]
  ip_protocol       = var.protocol[0]
  to_port           = var.ing_port_range[count.index]
}

resource "aws_vpc_security_group_egress_rule" "example" {
  count             = var.sg_egress_cnt
  description       = "Allow-${var.eg_port_range[count.index]}-port-for-incoming-traffic"
  security_group_id = aws_security_group.tf-sg.id
  cidr_ipv4         = var.default_gateway
  from_port         = var.eg_port_range[0]
  ip_protocol       = "-1"
  to_port           = var.eg_port_range[0]
}
