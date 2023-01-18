

resource "aws_nat_gateway" "NAT-GW" {
  allocation_id = aws_eip.myEIP.id
  subnet_id     = aws_subnet.mypublicsubnet.id


}