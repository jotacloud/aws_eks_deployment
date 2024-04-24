module "Network" {
  source     = "./modules/Network"
  cidr_block = var.cidr_block
  tags       = local.tags
}