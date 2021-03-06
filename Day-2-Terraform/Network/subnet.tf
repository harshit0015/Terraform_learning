resource "aws_subnet" "public-subnet" {
  availability_zone       = data.aws_availability_zones.available.names[0]
  vpc_id                  = aws_vpc.my-vpc.id
  map_public_ip_on_launch = true
  cidr_block              = "172.168.0.0/17"

  tags = {
    Name = "public-subnet-2"
  }

}

resource "aws_subnet" "private-subnet" {
  availability_zone = data.aws_availability_zones.available.names[1]
  vpc_id            = aws_vpc.my-vpc.id
  cidr_block        = "172.168.128.0/17"
  tags = {
    Name = "private-subnet-2"
  }
}
