# ## Busca a imagem mais recente do Amazon Linux 2023 ##
# data "aws_ami" "amazon_linux" {
#   most_recent = true
#   owners      = ["amazon"]
# 
#   filter {
#     name   = "name"
#     values = ["al2023-ami-2023*-x86_64"]
#   }
# }
# 
# ## Cria o security group liberando a porta 80 (HTTP) ##
# resource "aws_security_group" "sg_web" {
#   name        = "sg_web_apache"
#   description = "Libera HTTP na porta 80"
#   vpc_id      = aws_vpc.clc_vpc.id
# 
#   ingress {
#     description = "HTTP"
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# 
#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# 
#   tags = {
#     Name = "sg_web_tf"
#   }
# }
# 
# ## Cria a EC2 na subnet publica 1a com o Apache instalado ##
# resource "aws_instance" "ec2_web" {
#   ami                         = data.aws_ami.amazon_linux.id
#   instance_type               = "t3.micro"
#   subnet_id                   = aws_subnet.public_subnet_1a.id
#   vpc_security_group_ids      = [aws_security_group.sg_web.id]
#   associate_public_ip_address = true
# 
#   user_data = <<-EOT
#     #!/bin/bash
#     dnf install -y httpd
#     systemctl enable httpd
#     systemctl start httpd
#     echo '<html><head><meta charset="utf-8"></head><body><h1>CHEGUEI ATÉ AQUI - Luciano Correia da Silva - CLC 16</h1></body></html>' > /var/www/html/index.html
#   EOT
# 
#   tags = {
#     Name = "ec2_web_apache_tf"
#   }
# 
#   ## Nao recria a EC2 quando a Amazon lancar uma AMI mais nova ##
#   lifecycle {
#     ignore_changes = [ami]
#   }
# }
