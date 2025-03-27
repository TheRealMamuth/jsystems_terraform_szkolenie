<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | 2.50.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.7.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_vpc.vpc](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/vpc) | resource |
| [random_integer.random_3_octet](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/integer) | resource |
| [random_string.random_name](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_base_cidr"></a> [base\_cidr](#input\_base\_cidr) | The base CIDR block for the VPC | `string` | `"10.10.0.0/16"` | no |
| <a name="input_description"></a> [description](#input\_description) | The description of the VPC | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the VPC | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | `"fra1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cidr"></a> [cidr](#output\_cidr) | n/a |
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_urn"></a> [urn](#output\_urn) | n/a |
<!-- END_TF_DOCS -->