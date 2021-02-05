terraform {
  required_providers {
    linode = "~> 1.9"
  }
}

provider "linode" {
  token = var.linode_token
}

resource "linode_domain" "example-com" {
  soa_email   = "yourmail@example.com"
  domain      = "example.com"
  type        = "master"
}

module "example-com-records" {
  source = "../../"
  domain_id   = linode_domain.example-com.id
}