output "vpc_id" {
  value       = aws_vpc.main.id
  description = "The ID of the VPC created"
}

output "instance_id" {
  value       = aws_instance.ubuntu.id
  description = "The ID of the EC2 instance created"
}

output "instance_public_ip" {
  value       = aws_instance.ubuntu.public_ip
  description = "The public IP address of the EC2 instance"
}
