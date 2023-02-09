output "web_server_sg_id" {
  description = "WEB server SG"
  value       = aws_security_group.webserver-sg.id
}

output "db_sg_id" {
  description = "DB SG"
  value       = aws_security_group.database-sg.id
}
