
output "ip_public" {
  value       = values (aws_instance.web)[*].public_ip
  description = "saida com ip publico das instancias"
}

output "ip_private" {
  value       = values(aws_instance.web)[*].private_ip
  description = "saida com ip privado das instancias"
}
