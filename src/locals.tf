locals {
  ssh_from_file = file( "~/.ssh/id_ed25519.pub")
  loc_ssh = "ubuntu:${local.ssh_from_file}"
}