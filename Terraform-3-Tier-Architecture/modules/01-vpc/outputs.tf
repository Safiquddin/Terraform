output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.my-vpc.id
}

output "web_sub_1" {
  description = "Web Subnet ID 1"
  value       = aws_subnet.web-subnet-1.id
}

output "web_sub_2" {
  description = "Web Subnet ID 2"
  value       = aws_subnet.web-subnet-2.id
}

output "db_sub1_id" {
  description = "DB Subnet ID 1"
  value       = aws_subnet.database-subnet-1.id
}

output "db_sub2_id" {
  description = "DB Subnet ID 2"
  value       = aws_subnet.database-subnet-2.id
}
