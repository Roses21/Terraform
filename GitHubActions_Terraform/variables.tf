variable "region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "ap-southeast-1"
}

variable "project_name" {
  description = "Demo CI/CD AWS of the project"
  type        = string
  default     = "my_project_name" # Thêm giá trị mặc định
}

