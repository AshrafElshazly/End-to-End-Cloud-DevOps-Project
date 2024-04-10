output "dns" {
  value = module.alb.alb-dns
}

output "name" {
  value = module.instances.bastionIP
}
