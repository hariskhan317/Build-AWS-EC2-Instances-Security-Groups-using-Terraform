// OUTPUT FOR PUBLIC AND PRIVATE INSTANCE

// PUBLIC OUTPUT bastionhost
output "public_ip_bastionhost_instance" {
  value       = module.ec2_instance_bastionHost.public.id
  description = "Public ip for bastion host " 
}
// PRIVATE OUTPUT bastionhost
output "private_ip_bastionhost" {
  value       = module.ec2_instance_bastionHost.private.id
  description = "Private ip for bastionhost " 
}


// PUBLIC OUTPUT private
output "public_ip_private_instance" {
  value       = module.ec2_instance_private.public.id
  description = "Public ip for Private Instance " 
}
// PRIVATE OUTPUT private
output "private_ip_private_instance" {
  value       = module.ec2_instance_private.private.id
  description = "Private ip for Private Instance " 
}
