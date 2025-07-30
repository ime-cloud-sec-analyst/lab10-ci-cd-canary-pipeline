provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "app" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  tags = {
    Name = "canary-instance"
  }
}
