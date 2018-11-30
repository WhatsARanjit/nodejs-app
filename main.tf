//--------------------------------------------------------------------
// Variables
variable "nodejs_prefix" {}
variable "nodejs_ssh_key_name" {}

//--------------------------------------------------------------------
// Modules
module "nodejs" {
  source  = "app.terraform.io/hashijit/nodejs/aws"
  version = "0.1.0"

  prefix = "${var.nodejs_prefix}"
  ssh_key_name = "${var.nodejs_ssh_key_name}"
