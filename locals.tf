


 locals {
      
       user_data = <<-EOF
              #!/bin/bash
              apt_get update
              apt_get install -y nginx
              systemctl start nginx
              systemctl enable nginx
              EOF

  disable_api_stop = true
}
