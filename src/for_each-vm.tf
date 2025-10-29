# Ex.2-2
resource "yandex_compute_instance" "db_replica" {
  for_each         = var.each_vm

  name             = each.value.vm_name
  hostname         = join("-", yandex_vpc_network.develop.name, each.value.vm_name)
  platform_id      = var.common_platform
  zone             = var.default_zone

  resources {
    cores          = each.value.cpu
    memory         = each.value.ram
    core_fraction  = var.common_core_fraction
  }

  boot_disk {
    initialize_params {
      image_id     = data.yandex_compute_image.ubuntu.image_id
      size         = each.value.disk_volume
    }
  }

  scheduling_policy {
    preemptible    = var.preempt_on
  }

  network_interface {

    subnet_id      = yandex_vpc_subnet.develop.id
    nat            = var.nat_is_on
    security_group_ids = [yandex_vpc_security_group.example.id]
  }
  metadata = var.common_metadata
}