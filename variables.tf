variable "server_name_01" {
  description = "Name of Web Server 01"
  type        = string
  default     = "web01"
}

variable "server_name_02" {
  description = "Name of Web Server 02"
  type        = string
  default     = "web02"
}

variable "cpu" {
  description = "CPU configuration"
  type        = number
  default     = 2
}

variable "ram" {
  description = "RAM in MB"
  type        = number
  default     = 2048
}

variable "disk" {
  description = "Disk size in GB"
  type        = number
  default     = 20
}

variable "ssh_key" {
  description = "SSH public key"
  type        = string
  default     = ""
}

variable "region" {
  description = "Region or Zone"
  type        = string
  default     = "local"
}

variable "web01_port" {
  description = "External port for Web Server 01"
  type        = number
  default     = 8081
}

variable "web02_port" {
  description = "External port for Web Server 02"
  type        = number
  default     = 8082
}