variable "cidr_block" {
  description = "bloco CIDR de rede usado pela VPC"
  type        = string
}

variable "tags" {
  description = "Tags para os recursos"
  type        = map(any)
}