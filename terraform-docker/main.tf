terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.20.2"
    }
  }
}

provider "docker" {}

#makes the nodered non-volatile
#so that on reload it doesnt lose configuration

resource "null_resource" "dockervol"{
  provisioner "local-exec" {
    command = "mkdir noderedvol/ || true && sudo chown -R 1000:1000 noderedvol/"
  }
}

resource "docker_image" "nodered_image" {
  name = var.image[terraform.workspace]
}

resource "random_string" "random" {
  count = local.container_count
  length  = 4
  special = false
  upper   = false
}



resource "docker_container" "nodered_container" {
  count = local.container_count
  name  = join("-" , ["nodereed", terraform.workspace, random_string.random[count.index].result])
  image = docker_image.nodered_image.latest
  ports {
    internal = var.int_port
    external = var.ext_port[terraform.workspace][count.index]
  }
  
  volumes{
    container_path = "/data"
    host_path = "${path.cwd}/noderedvol"
  } 

}

# resource "docker_container" "nodered_container2" {
#   name  = join("-" , ["nodered", random_string.random1.result])
#   image = docker_image.nodered_image.latest
#   ports {
#     internal = 1880
#     #external = 1880
#   }

# }


