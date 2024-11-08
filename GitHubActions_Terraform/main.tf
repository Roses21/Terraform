terraform {
 required_providers {
   aws = {
     source = "hashicorp/aws"
   }
 }
 
 backend "s3" {
   region = "ap-southeast-1"
   key    = "terraform.tfstate"
 }
}
 
provider "aws" {
 region = "ap-southeast-1"
}
 
resource "aws_instance" "test_instance" {
 ami           = "ami-08f49baa317796afd"
 instance_type = "t2.micro"
 tags = {
   Name = "test_instance"
 }
}
