//--------------------------------------------------------------------
// Modules
module "nodejs" {
  source  = "app.terraform.io/hashijit/nodejs/aws"
  version = "0.1.1"

  prefix = "ranjit-bcg"
  security_group_id = "sg-0eb81199a3f8bc1ec"
  ssh_key_name = "ranjit-vault-demo"
  vault_ip = "http://54.84.109.55:8200"
}
  
output "myIP" {
  value = "${module.nodejs.ip}"
}
