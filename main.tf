provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "bluespeed-terraform"
    key    = "terraformDns"
    region = "us-east-1"
  }
}

module "bluespeedinfo" {
  source = "./modules/drewdns"
  domain = "bluespeed.info."
  verify = "zb14237749"
  dkim = "v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCB2WtfhMq05g+fqRfvGHzXaqvHif1bjCbUlF6QugP/pto0TVh69paYfxcTbhBgP1E99LxwAVMAuc0ZrnTTToNcYDRVzApyG/zeHKaYQpgCY/4ApRPHProwCPTpKclP9YEepBcYTFdd6uoUJlSZQMt0OyHdVnCePpXcym5CcI1JDwIDAQAB"
}

module "bluespeedus" {
  source = "./modules/drewdns"
  domain = "bluespeed.us."
  verify = "zb14237749"
}

module "dctsus" {
  source = "./modules/drewdns"
  domain = "dcts.us."
  verify = "zb14237763"
}

module "drewgleme" {
  source = "./modules/drewdns"
  domain = "drewgle.me."
  verify = "zb15110177"
}

module "dctechnicalsolutionsus" {
  source = "./modules/drewdns"
  domain = "dctechnicalsolutions.us."
  verify = "zb14237762"
}
