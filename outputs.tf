output "web01_name" {
  description = "Web Server 01 name"
  value       = docker_container.web01.name
}

output "web02_name" {
  description = "Web Server 02 name"
  value       = docker_container.web02.name
}

output "web01_url" {
  description = "Web Server 01 URL"
  value       = "http://localhost:${var.web01_port}"
}

output "web02_url" {
  description = "Web Server 02 URL"
  value       = "http://localhost:${var.web02_port}"
}

output "region" {
  description = "Deployment region"
  value       = var.region
}