#i am going to create Ec2 machine in AWS Cloud. So, my provider is AWS.
provider "aws" {
  region = "us-east-2"
}

# create EC2 machine
resource "aws_instance" "webserver" {
  ami           = "ami-0beaa649c482330f7"
  instance_type = "t2.micro"

  tags = {
    Name = "webserver"
  }
}
