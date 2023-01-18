provider "aws" {
  region = "us-east-2"
}

resource "aws_security_group" "webserver-http" {
  name        = "webserver-http"
  description = "Allow HTTP inbound traffic"
  vpc_id      = "vpc-06504405b82dd0490"
}
