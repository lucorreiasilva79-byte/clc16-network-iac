## ID da VPC ##
output "clc_vpc" {
  value = aws_vpc.clc_vpc.id
}

## ID do Internet Gateway ##
output "gw_clc_vpc" {
  value = aws_internet_gateway.gw_clc_vpc.id
}


## ID da subnet publica 1a ##
output "public_subnet_1a" {
  value = aws_subnet.public_subnet_1a.id
}

## ID da subnet privada 1a ##
output "private_subnet_1a" {
  value = aws_subnet.private_subnet_1a.id
}

## ID da subnet publica 1c ##
output "public_subnet_1c" {
  value = aws_subnet.public_subnet_1c.id
}

## ID da subnet privada 1c ##
output "private_subnet_1c" {
  value = aws_subnet.private_subnet_1c.id
}


## ID do IP publico do nat gateway 1a ##
output "eip_nat_gw_1a" {
  value = aws_eip.eip_nat_gw_1a.id
}

## ID do nat gateway 1a ##
output "nat_gw_1a" {
  value = aws_nat_gateway.nat_gw_1a.id
}

## ID do IP publico do nat gateway 1c ##
output "eip_nat_gw_1c" {
  value = aws_eip.eip_nat_gw_1c.id
}

## ID do nat gateway 1c ##
output "nat_gw_1c" {
  value = aws_nat_gateway.nat_gw_1c.id
}


## ID da tabela de rota publica ##
output "public_rt" {
  value = aws_route_table.public_rt.id
}

## ID da associacao da subnet publica 1a com a tabela de rota publica ##
output "rt_pub_association_subnet_1a" {
  value = aws_route_table_association.rt_pub_association_subnet_1a.id
}

## ID da associacao da subnet publica 1c com a tabela de rota publica ##
output "rt_pub_association_subnet_1c" {
  value = aws_route_table_association.rt_pub_association_subnet_1c.id
}

## ID da tabela de rota privada 1a ##
output "private_rt_1a" {
  value = aws_route_table.private_rt_1a.id
}

## ID da associacao da subnet privada 1a com a tabela de rota privada 1a ##
output "rt_priv_association_subnet_1a" {
  value = aws_route_table_association.rt_priv_association_subnet_1a.id
}

## ID da tabela de rota privada 1c ##
output "private_rt_1c" {
  value = aws_route_table.private_rt_1c.id
}

## ID da associacao da subnet privada 1c com a tabela de rota privada 1c ##
output "rt_priv_association_subnet_1c" {
  value = aws_route_table_association.rt_priv_association_subnet_1c.id
}


## ID do security group da EC2 ##
output "sg_web" {
  value = aws_security_group.sg_web.id
}

## ID da EC2 com Apache ##
output "ec2_web" {
  value = aws_instance.ec2_web.id
}

## IP publico da EC2 (abrir no navegador) ##
output "ec2_public_ip" {
  value = aws_instance.ec2_web.public_ip
}
