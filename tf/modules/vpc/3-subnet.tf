resource "aws_subnet" "pub-sub" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.pub_sub_cidr
  //This allocate public_ip for public ec2
  map_public_ip_on_launch = var.map_public_ip

  tags = {
    Name = var.pub_sub_tag
  }
}
