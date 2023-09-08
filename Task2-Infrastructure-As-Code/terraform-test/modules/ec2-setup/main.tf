resource "aws_instance" "webapp" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "WebApp-Server"
  }

  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.webapp_sg.id]

  user_data = <<-EOF
              #!/bin/bash
              sudo apt update
              sudo apt install docker.io -y
              sudo systemctl start docker
              sudo docker run -d -p 3000:3000 my-nextjs-app
              EOF
}

resource "aws_security_group" "webapp_sg" {
  name        = "webapp-sg"
  description = "Allow inbound traffic for web app"

  ingress {
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "webapp-sg"
  }
}
