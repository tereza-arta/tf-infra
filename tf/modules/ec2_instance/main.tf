#Key-gen
#resource "tls_private_key" "key_gen" {
#  algorithm = var.key_algorithm
#  rsa_bits  = var.rsa_bits
#}
#
#resource "aws_key_pair" "key" {
#  key_name   = var.key_name
#  public_key = tls_private_key.key_gen.public_key_openssh
#}
#
#resource "local_file" "key_file" {
#  content  = tls_private_key.key_gen.private_key_pem
#  filename = var.key_file
#}

data "aws_ami" "ami" {
  most_recent = var.recent_ami

  filter {
    name   = var.filter_option_1
    values = [var.filter_1_value]
  }

  filter {
    name   = var.filter_option_2
    values = [var.filter_2_value]
  }

  owners = [var.ami_owner_id]
}

resource "aws_instance" "ec2" {
  ami                         = data.aws_ami.ami.id
  instance_type               = var.instance_type
  count                       = var.instance_count
  associate_public_ip_address = var.in_public_subnet
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [var.sec_group_id]
  #key_name = aws_key_pair.key.key_name
  key_name  = "demo"
  user_data = file(var.data_file)

  tags = {
    Name = var.instance_tag
  }

}
