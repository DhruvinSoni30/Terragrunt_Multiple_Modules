# Getting Public IP of EC2 instance
output "public_IP" {
  value = aws_instance.demo_instance.public_ip
}
