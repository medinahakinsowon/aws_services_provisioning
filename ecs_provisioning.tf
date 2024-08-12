





# this is initializing an ec2_instance

resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type
           
  user_data = local.user_data

  tags = var.tags

}


resource "aws_instance" "web_22" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}









