# --- MX Records
resource "linode_domain_record" "tutanota-mx-1" {
  domain_id   = var.domain_id
  record_type = "MX"
  name        = ""
  priority    = "10"
  target      = "mail.tutanota.de"
}

# --- CNAME Records
resource "linode_domain_record" "tutanota-cname-1" {
  domain_id   = var.domain_id
  record_type = "CNAME"
  name        = "s1._domainkey"
  target      = "s1._domainkey.tutanota.de"
}
resource "linode_domain_record" "tutanota-cname-2" {
  domain_id   = var.domain_id
  record_type = "CNAME"
  name        = "s2._domainkey"
  target      = "s2._domainkey.tutanota.de"
}

# --- TXT Records
resource "linode_domain_record" "tutanota-txt-1" {
  domain_id   = var.domain_id
  record_type = "TXT"
  name        = ""
  target      = "v=spf1 include:spf.tutanota.de -all"
  ttl_sec     = "300"
}
resource "linode_domain_record" "tutanota-txt-2" {
  domain_id   = var.domain_id
  record_type = "TXT"
  name        = "_dmarc"
  target      = "v=DMARC1; p=quarantine; adkim=s"
}