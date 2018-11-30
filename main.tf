//--------------------------------------------------------------------
// Variables
variable "nodejs_security_group_id" {}
variable "nodejs_vault_ip" {}

//--------------------------------------------------------------------
// Modules
module "nodejs" {
  source  = "app.terraform.io/hashijit/nodejs/aws"
  version = "0.1.0"

  prefix = "ibcg"
  security_group_id = "${var.nodejs_security_group_id}"
  ssh_key_name = "ranjit-vault-demo"
  vault_ip = "${var.nodejs_vault_ip}"
}
