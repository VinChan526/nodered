output "IP-Address-1" {
  value = [for i in docker_container.nodered_container[*] : join(":", [i.ip_address],i.ports[*]["external"])]
  description = "IP and port"
}



output "containername" {
  value       = docker_container.nodered_container[*].name
  description = "name of containername"
}

