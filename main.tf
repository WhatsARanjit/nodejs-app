//--------------------------------------------------------------------
// Modules
module "nodejs" {
  source  = "app.terraform.io/hashijit/nodejs/aws"
  version = "0.1.1"

  prefix = "bcg"
  ssh_key_name = "ranjit-vault-demo"
}

output "myIP" {
  value = "${module.nodejs.ip}"
}
