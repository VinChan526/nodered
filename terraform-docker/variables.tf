# variable "env"{
#   type = string
#   default = "dev"
#   description = "Env to deploy"
# }



variable "image" {
  type = map
  description = "Image for a container"
  default = {
    dev = "nodered/node-red:latest"
    prod = "nodered/node-red:latest-minimal"
  }
}

variable "ext_port" {
  type= map
  
  
  validation {
    condition = max(var.ext_port["dev"]...) <= 65535 && min(var.ext_port["dev"]...) >= 1980
    error_message = "shud be in rnge"
  }
  
    validation {
    condition = max(var.ext_port["prod"]...) < 1980 && min(var.ext_port["prod"]...) >= 1880
    error_message = "shud be in rnge"
  }

}

variable "int_port" {
  type = number
  default = 1880
  
    validation {
      condition = var.int_port == 1880
      error_message = "Not the valid port."
  }
}

locals {
  container_count = length(var.ext_port[terraform.workspace])
}

