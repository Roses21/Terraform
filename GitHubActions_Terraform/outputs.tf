output "instance_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.terraform_cicd_demo.public_ip
}
