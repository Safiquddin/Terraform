output "web_server_id_1" {
  description = "Web server ID"
  value       = aws_instance.webserver1.id
}

output "web_server_id_2" {
  description = "Web server ID"
  value       = aws_instance.webserver2.id
}

output "web_server_instance1" {
  description = "Web server "
  value       = aws_instance.webserver1
}

output "web_server_instance2" {
  description = "Web server "
  value       = aws_instance.webserver2
}
