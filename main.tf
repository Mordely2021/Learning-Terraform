resource "aws_instance" "Sunshine" {
  ami           = "ami-0a699202e5027c10d"
  instance_type = "t2.micro"

  tags = {
    Name = "Sunshine"
  }
}

resource "aws_vpc" "Sunshine" {
  cidr_block           = "10.0.0.0/16"
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