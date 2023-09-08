module "ec2" {
  source      = "./modules/ec2-setup"
  ami_id      = var.ami_id
  key_name    = var.key_name
  instance_type = var.instance_type
}
