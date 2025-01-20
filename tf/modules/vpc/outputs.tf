output "pub_sub_id" {
  value = aws_subnet.pub-sub.id
}

output "sec_group_id" {
  value = aws_security_group.tf-sg.id
}
