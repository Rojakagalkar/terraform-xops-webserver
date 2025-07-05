output "ec2_public_ip" {
  value = aws_instance.web.public_ip
}

#output "ec2_public_ip1" {
#  description = "Public IP of the EC2 instance"
#  value       = aws_instance.web.public_ip
#}

#output "ec2_instance_id" {
# value = aws_instance.web.id
#}

#output "ec2_public_dns" {
#  value = aws_instance.web.public_dns
#}

output "private_key_path" { 
  value = local_file.xops_private_key_pem.filename
}

output "key_name" {
  value = aws_key_pair.xops_key.key_name
}

output "xops_web_url" {
  value = "http://${aws_instance.web.public_ip}"
}