# to create a vpc
resource "aws_vpc" "my-vpc" {
    cidr_block = "237.84.2.178/16"
}
# to create a subnet
resource "aws_subnet" "my-subnet" {
    vpc_id = aws_vpc.my-vpc.id
    cidr_block = "237.84.2.178/24"
}



