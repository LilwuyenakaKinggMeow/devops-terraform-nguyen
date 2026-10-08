terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "web_server" {
  name = "ansible-web-server:latest"
}

resource "docker_network" "devops" {
  name = "devops-network"
}

resource "docker_container" "web01" {
  name  = var.server_name_01
  image = docker_image.web_server.image_id

  command = ["/usr/sbin/sshd", "-D"]

  ports {
    internal = 22
    external = 2221
  }

  ports {
    internal = 80
    external = var.web01_port
  }

  networks_advanced {
    name = docker_network.devops.name
  }
}

resource "docker_container" "web02" {
  name  = var.server_name_02
  image = docker_image.web_server.image_id

  command = ["/usr/sbin/sshd", "-D"]

  ports {
    internal = 22
    external = 2222
  }

  ports {
    internal = 80
    external = var.web02_port
  }

  networks_advanced {
    name = docker_network.devops.name
  }
}