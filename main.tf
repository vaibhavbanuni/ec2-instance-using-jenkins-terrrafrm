resource "aws_instance" "web" {
  ami           = "ami-0d13e3e640877b0b9"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
