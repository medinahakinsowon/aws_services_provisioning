  


#getting out some specific info about the instances created

output "instance_id" {
    value = aws_instance.web.id
 }


output "public_ip" {
     value = aws_instance.web.public_ip
  }

output "arn" {
    value = aws_instance.web.arn
  }

