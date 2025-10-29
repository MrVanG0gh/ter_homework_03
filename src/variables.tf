###cloud vars

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

variable "counter_vm" {
  type        = number
  default     = 2
  description = "How many VM to create"
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

### Vars for Ex.3

variable "each_vm" {
  type          = list(object({
    vm_name     = string
    cpu         = number
    ram         = number
    disk_volume = number }))
  default = [
    {         vm_name    = "main"
              cpu         = 2
              ram         = 2
              disk_volume = 10
    },
    {         vm_name     = "replica"
              cpu         = 2
              ram         = 1
              disk_volume = 5
    }]
}
### Vars for Ex.4

variable "vdisks" {
  type = object({
    name = string
    counter = number
    type = string
    size = number
  })

  default = {
    name = "vdisk"
    counter = 3
    type = "network-hdd"
    size = 1
  }
  description = "Info about disks"
}

### Common vars

variable "common_core_fraction" {
  type        = number
  default     = "20"
  description = "Common core fraction"
}

variable "family_name" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "Type of the OS"
}

variable "common_platform" {
  type        = string
  default     = "standard-v1"
  description = "Common platform"
}

variable "common_metadata" {
  description = "Common meta data for SSH"
  type        = map(string)
  default     = {
    serial-port-enable = "1"
    #ssh-keys           = "ubuntu:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMnceZd2rCKdINN9bbS0QQ5X4mubdFaheN6XcNHbb+u4"
  }
}