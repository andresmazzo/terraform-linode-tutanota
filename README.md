# terraform-linode-tutanota

Terraform module for easy DNS configuration required by [Tutanota](https://www.tutanota.com) Mail Service.

## Usage

**Using Terraform Registry**
```
module "example-com-mail-records" {
  source            = "andresmazzo/tutanota/linode"
  domain_id         = "01234"
}
```


**Using Github**
```
module "example-com-mail-records" {
  source            = "github.com/andresmazzo/terraform-linode-tutanota"
  domain_id         = "01234"
}
```