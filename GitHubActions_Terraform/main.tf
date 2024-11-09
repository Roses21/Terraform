resource "aws_instance" "terraform_cicd_demo" {
  ami                    = "ami-08f49baa317796afd" # Amazon Linux 2023 AMI
  instance_type          = "t2.micro"
  availability_zone      = "ap-southeast-1a"
  key_name               = "terraform_keypair"
  vpc_security_group_ids = ["sg-03a4cc4d776b59709"]
  tags = {
    Name = "terraform_instance_demo"
  }
}
