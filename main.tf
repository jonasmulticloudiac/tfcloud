provider "aws" {
  region = "us-west-2"
}
provider "aws" {
  region = "us-west-1"
  alias  = "califa"
}

resource "aws_vpc" "oregonvpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_vpc" "califavpc" {
  cidr_block = "10.1.0.0/16"
  provider   = aws.califa
}
