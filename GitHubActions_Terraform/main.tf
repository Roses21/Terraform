resource "aws_instance" "demo_cicd" {
  ami           = "ami-08f49baa317796afd " # Minux 2023 AMI
  instance_type = "t2.micro"

  tags = {
    Name = "${var.project_name}-instance"
  }
}
