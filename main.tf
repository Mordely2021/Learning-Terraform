resource "aws_instance" "Sunshine" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "Sunshine"
  }
}

resource "aws_vpc" "Sunshine" {
  cidr_block           = var.vpc_cidr
  instance_tenancy     = "default"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = "Sunshine"
  }
}

# create s3 bucket
resource "aws_s3_bucket" "myfisrts3bucket" {
  bucket = var.bucketname

}