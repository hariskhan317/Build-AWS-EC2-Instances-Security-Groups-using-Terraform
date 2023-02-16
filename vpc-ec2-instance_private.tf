module "ec2_instance_private" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "ec2_instance_private"

  ami                    = "data.aws_ami.amzlinux2.id"
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [module.sg_privategroup.security_group_id]
  subnet_ids = [
    module.vpc.private_subnets[0],
    module.vpc.private_subnets[1],
  ]
  count                  = var.private_instance_count
  user_data = file("{$path.module}/app1-install.sh")
  tags ={
    name = "ec2_instance_private"
  }
}