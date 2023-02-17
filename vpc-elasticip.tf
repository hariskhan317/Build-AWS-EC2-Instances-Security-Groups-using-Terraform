resource "aws_eip" "vpc_elastic" {
    depends_on = [ module.vpc, module.public_ip_bastionhost_instance]
    instance = module.ec2_instance_bastionHost.id
    vpc      = true
}
