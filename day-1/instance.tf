resource "aws_instance" "example" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
  #key_name      = aws_key_pair.mykey.key_name
  tags = {
    "name" : "DemoServer"
  }

  # This will work on mac or linux
  # This will execute locally not on the instance 
  provisioner "local-exec" {
    command = "echo ${aws_instance.example.private_ip} >> private_ips.txt"
  }
}

output "ip" {
  value = aws_instance.example.public_ip
}
