#Create private Route table
resource "aws_route_table" "privRT" {
  vpc_id = aws_vpc.my-vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.NAT-GW.id
  }
}

#Create Public route table
resource "aws_route_table" "publRT" {
  vpc_id = aws_vpc.my-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.IGW.id
  }
}

#Associate private route table with private subnet
resource "aws_route_table_association" "PrivRTAss" {
  subnet_id      = aws_subnet.myprivatesubnet.id
  route_table_id = aws_route_table.privRT.id
}

#Associate public route table with public subnet
resource "aws_route_table_association" "PubRTAss" {
  subnet_id      = aws_subnet.mypublicsubnet.id
  route_table_id = aws_route_table.publRT.id
}