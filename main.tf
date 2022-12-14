# Module aws-tfmodule-ec2-docker
module "aws_ec2_docker" {
  source              = "github.com/andresguisado/aws-tfmodule-ec2-dns-docker"
  client_name         = "${var.client_name}"
  product             = "${var.product}"
  environment         = "${var.environment}"
  region              = "${var.region}"
  instance_type       = "${var.instance_type}"
  subnet              = "${var.subnet}"
  ssh_key_name        = "${var.ssh_key_name}"
  r53_zoneid_public   = "${var.r53_zoneid_public}"
  dns_public_name     = "${var.dns_public_name}"
}
