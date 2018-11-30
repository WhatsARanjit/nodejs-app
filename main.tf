//--------------------------------------------------------------------
// Modules
module "nodejs" {
  source  = "app.terraform.io/hashijit/nodejs/aws"
  version = "0.1.1"

  security_group_id = "sg-0eb81199a3f8bc1ec"
  prefix = "bcg"
  ssh_key_name = "ranjit-vault-demo"
}

output "myIP" {
  value = "${module.nodejs.ip}"
}
  
provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "clever_idea" {
  bucket = "catch_me"
  acl    = "private"

  tags {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
