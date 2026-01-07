
output "publicIP" {
  value = aws_instance.microType.public_ip
}

output "id" {
  value = aws_instance.microType.id
}