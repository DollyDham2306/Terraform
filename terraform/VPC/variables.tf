variable "aws_region" {
  description = " AWS region to create VPC in "
  default     = "us-east-2"
}

variable "vpc_cidr" {
  description = "cidr block for VPC"
  default     = "10.0.0.0/16"
}

variable "prisub_cidr" {
  description = "value for CIDR block for private subnet"
  default     = "10.0.2.0/24"

}
variable "pubsub_cidr" {
  description = "value of CIDR block for public subnet"
  default     = "10.0.1.0/24"
}