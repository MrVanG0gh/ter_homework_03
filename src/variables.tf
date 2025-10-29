###cloud vars
/* variable "token" {
   type        = string
  default     = file("~/token")
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}
 */

variable "cloud_id" {
  type        = string
  default     = "b1gd0ene28ce38jum5ol"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  default     = "b1gh84ji5m46hok29kbf"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

### Vars for Ex.2

variable "family_name" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "Type of the OS"
}

variable "zone_1a" {
  type        = string
  default     = "ru-central1-a"
  description = "Default zone is ru-central-1a"
}

variable "web_cores" {
  type        = number
  default     = "2"
  description = "Number of cores for web-VM"
}

variable "web_memory" {
  type        = number
  default     = "1"
  description = "Amount of memory for web-VM"
}

variable "web_core_fraction" {
  type        = number
  default     = "20"
  description = "Core fraction for web-VM"
}

variable "preempt_on" {
  type        = bool
  default     = true
  description = "Preemptible is always on"
}
variable "nat_is_on" {
  type        = bool
  default     = true
  description = "NAT is on"
}

variable "common_metadata" {
  description = "Common meta data"
  type        = map(string)
  default     = {
    serial-port-enable = "1"
    ssh-keys           = "ubuntu:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMnceZd2rCKdINN9bbS0QQ5X4mubdFaheN6XcNHbb+u4"
    }
}
