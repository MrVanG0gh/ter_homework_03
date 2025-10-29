# Ex.3

resource "yandex_compute_disk" "virtual_disks" {
  count = var.vdisks.counter

  name = "${ var.vdisks.name }-${ count.index + 1 }"
  type = var.vdisks.type
  size = var.vdisks.size
}

