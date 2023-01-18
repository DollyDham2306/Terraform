resource "aws_internet_gateway" "IGW" {
  vpc_id = aws_vpc.my-vpc.id

}

#Create Elastic IP for IGW
resource "aws_eip" "myEIP" {
  vpc = true
}
