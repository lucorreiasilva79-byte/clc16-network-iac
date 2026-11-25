# clc16-network-iac
Aula de terraform

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 6.72.0 |

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_aws"></a> [aws](#provider\_aws) | 6.72.0 |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [aws_eip.eip_nat_gw_1a](https://registry.terraform.io/providers/hashicorp/aws/6.72.0/docs/resources/eip) | resource |
| [aws_eip.eip_nat_gw_1c](https://registry.terraform.io/providers/hashicorp/aws/6.72.0/docs/resources/eip) | resource |
| [aws_instance.ec2_web](https://registry.terraform.io/providers/hashicorp/aws/6.72.0/docs/resources/instance) | resource |
| [aws_internet_gateway.gw_clc_vpc](https://registry.terraform.io/providers/hashicorp/aws/6.72.0/docs/resources/internet_gateway) | resource |
| [aws_nat_gateway.nat_gw_1a](https://registry.terraform.io/providers/hashicorp/aws/6.72.0/docs/resources/nat_gateway) | resource |
| [aws_nat_gateway.nat_gw_1c](https://registry.terraform.io/providers/hashicorp/aws/6.72.0/docs/resources/nat_gateway) | resource |
| [aws_route_table.private_rt_1A](https://registry.terraform.io/providers/hashicorp/aws/6.72.0/docs/resources/route_table) | resource |
| [aws_route_table.private_rt_1c](https://registry.terraform.io/providers/hashicorp/aws/6.72.0/docs/resources/route_table) | resource |
| [aws_route_table.public_rt](https://registry.terraform.io/providers/hashicorp/aws/6.72.0/docs/resources/route_table) | resource |
| [aws_route_table_association.rt_priv_association_subnet_1a](https://registry.terraform.io/providers/hashicorp/aws/6.72.0/docs/resources/route_table_association) | resource |
| [aws_route_table_association.rt_priv_association_subnet_1c](https://registry.terraform.io/providers/hashicorp/aws/6.72.0/docs/resources/route_table_association) | resource |
| [aws_route_table_association.rt_pub_association_subnet_1a](https://registry.terraform.io/providers/hashicorp/aws/6.72.0/docs/resources/route_table_association) | resource |
| [aws_route_table_association.rt_pub_association_subnet_1c](https://registry.terraform.io/providers/hashicorp/aws/6.72.0/docs/resources/route_table_association) | resource |
| [aws_security_group.sg_web](https://registry.terraform.io/providers/hashicorp/aws/6.72.0/docs/resources/security_group) | resource |
| [aws_subnet.private_subnet_1a](https://registry.terraform.io/providers/hashicorp/aws/6.72.0/docs/resources/subnet) | resource |
| [aws_subnet.private_subnet_1c](https://registry.terraform.io/providers/hashicorp/aws/6.72.0/docs/resources/subnet) | resource |
| [aws_subnet.public_subnet_1a](https://registry.terraform.io/providers/hashicorp/aws/6.72.0/docs/resources/subnet) | resource |
| [aws_subnet.public_subnet_1c](https://registry.terraform.io/providers/hashicorp/aws/6.72.0/docs/resources/subnet) | resource |
| [aws_vpc.clc_vpc](https://registry.terraform.io/providers/hashicorp/aws/6.72.0/docs/resources/vpc) | resource |
| [aws_ami.amazon_linux](https://registry.terraform.io/providers/hashicorp/aws/6.72.0/docs/data-sources/ami) | data source |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_env"></a> [env](#input\_env) | n/a | `string` | `"dev"` | no |
| <a name="input_priv_subnet_1a_name"></a> [priv\_subnet\_1a\_name](#input\_priv\_subnet\_1a\_name) | n/a | `string` | `"terraform-private-subnet-1a"` | no |
| <a name="input_priv_subnet_1c_name"></a> [priv\_subnet\_1c\_name](#input\_priv\_subnet\_1c\_name) | n/a | `string` | `"terraform-private-subnet-1c"` | no |
| <a name="input_pub_subnet_1a_name"></a> [pub\_subnet\_1a\_name](#input\_pub\_subnet\_1a\_name) | n/a | `string` | `"terraform-public-subnet-1a"` | no |
| <a name="input_pub_subnet_1c_name"></a> [pub\_subnet\_1c\_name](#input\_pub\_subnet\_1c\_name) | n/a | `string` | `"terraform-public-subnet-1c"` | no |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | n/a | `string` | `"terraform-vpc"` | no |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_clc_vpc"></a> [clc\_vpc](#output\_clc\_vpc) | # ID da VPC ## |
| <a name="output_ec2_public_ip"></a> [ec2\_public\_ip](#output\_ec2\_public\_ip) | # IP publico da EC2 (abrir no navegador) ## |
| <a name="output_ec2_web"></a> [ec2\_web](#output\_ec2\_web) | # ID da EC2 com Apache ## |
| <a name="output_eip_nat_gw_1a"></a> [eip\_nat\_gw\_1a](#output\_eip\_nat\_gw\_1a) | # ID do IP publico do nat gateway 1a ## |
| <a name="output_eip_nat_gw_1c"></a> [eip\_nat\_gw\_1c](#output\_eip\_nat\_gw\_1c) | # ID do IP publico do nat gateway 1c ## |
| <a name="output_gw_clc_vpc"></a> [gw\_clc\_vpc](#output\_gw\_clc\_vpc) | # ID do Internet Gateway ## |
| <a name="output_nat_gw_1a"></a> [nat\_gw\_1a](#output\_nat\_gw\_1a) | # ID do nat gateway 1a ## |
| <a name="output_nat_gw_1c"></a> [nat\_gw\_1c](#output\_nat\_gw\_1c) | # ID do nat gateway 1c ## |
| <a name="output_private_rt_1A"></a> [private\_rt\_1A](#output\_private\_rt\_1A) | # ID da tabela de rota privada 1a ## |
| <a name="output_private_rt_1c"></a> [private\_rt\_1c](#output\_private\_rt\_1c) | # ID da tabela de rota privada 1c ## |
| <a name="output_private_subnet_1a"></a> [private\_subnet\_1a](#output\_private\_subnet\_1a) | # ID da subnet privada 1a ## |
| <a name="output_private_subnet_1c"></a> [private\_subnet\_1c](#output\_private\_subnet\_1c) | # ID da subnet privada 1c ## |
| <a name="output_public_rt"></a> [public\_rt](#output\_public\_rt) | # ID da tabela de rota publica ## |
| <a name="output_public_subnet_1a"></a> [public\_subnet\_1a](#output\_public\_subnet\_1a) | # ID da subnet publica 1a ## |
| <a name="output_public_subnet_1c"></a> [public\_subnet\_1c](#output\_public\_subnet\_1c) | # ID da subnet publica 1c ## |
| <a name="output_rt_priv_association_subnet_1a"></a> [rt\_priv\_association\_subnet\_1a](#output\_rt\_priv\_association\_subnet\_1a) | # ID da associacao da subnet privada 1a com a tabela de rota privada 1a ## |
| <a name="output_rt_priv_association_subnet_1c"></a> [rt\_priv\_association\_subnet\_1c](#output\_rt\_priv\_association\_subnet\_1c) | # ID da associacao da subnet privada 1c com a tabela de rota privada 1c ## |
| <a name="output_rt_pub_association_subnet_1a"></a> [rt\_pub\_association\_subnet\_1a](#output\_rt\_pub\_association\_subnet\_1a) | # ID da associacao da subnet publica 1a com a tabela de rota publica ## |
| <a name="output_rt_pub_association_subnet_1c"></a> [rt\_pub\_association\_subnet\_1c](#output\_rt\_pub\_association\_subnet\_1c) | # ID da associacao da subnet publica 1c com a tabela de rota publica ## |
| <a name="output_sg_web"></a> [sg\_web](#output\_sg\_web) | # ID do security group da EC2 ## |
<!-- END_TF_DOCS -->