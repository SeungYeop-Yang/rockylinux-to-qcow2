
packer {
  required_plugins {
    qemu = {
      version = ">= 1.1.0"
      source  = "github.com/hashicorp/qemu"
    }
  }
}

source "qemu" "noble" {
  iso_url                   = "https://cloud-images.ubuntu.com/noble/current/noble-server-cloudimg-amd64.img"
  iso_checksum              = "file:https://cloud-images.ubuntu.com/noble/current/SHA256SUMS"
  output_directory          = "output"
  shutdown_command          = "rm -f /home/ubuntu/.ssh/authorized_keys && sudo rm -f /root/.ssh/authorized_keys && echo 'packer' | sudo -S shutdown -P now"
  disk_size                 = "10G"
  format                    = "qcow2"
  #accelerator               = "kvm"
  http_directory            = "http"
  ssh_username              = "ubuntu"
  ssh_private_key_file      = "~/.ssh/id_ed25519"
  ssh_port                  = 22
  ssh_clear_authorized_keys = true
  ssh_timeout               = "60m"
  memory                    = 4096
  disk_image                = true
  disk_interface            = "virtio"
  #boot_wait                 = "1m"
  use_default_display       = true
  vm_name                   = "noble"
  qemuargs = [
    ["-display", "none"],
    ["-cdrom", "disk-ssh-pub-ubuntu.img"]
  ]
}



source "qemu" "jammy" {
  iso_url                   = "https://cloud-images.ubuntu.com/jammy/current/jammy-server-cloudimg-amd64.img"
  iso_checksum              = "file:https://cloud-images.ubuntu.com/jammy/current/SHA256SUMS"
  output_directory          = "output"
  shutdown_command          = "rm -f /home/ubuntu/.ssh/authorized_keys && sudo rm -f /root/.ssh/authorized_keys && echo 'packer' | sudo -S shutdown -P now"
  disk_size                 = "10G"
  format                    = "qcow2"
  http_directory            = "http"
  ssh_username              = "ubuntu"
  ssh_private_key_file      = "~/.ssh/id_ed25519"
  ssh_port                  = 22
  ssh_clear_authorized_keys = true
  ssh_timeout               = "60m"
  memory                    = 4096
  disk_image                = true
  disk_interface            = "virtio"
  boot_wait                 = "1m"
  use_default_display       = true
  vm_name                   = "jammy"
  qemuargs = [
    ["-display", "none"],
    ["-cdrom", "disk-ssh-pub-ubuntu.img"]
  ]
}

source "qemu" "focal" {
  iso_url                   = "https://cloud-images.ubuntu.com/focal/current/focal-server-cloudimg-amd64.img"
  iso_checksum              = "file:https://cloud-images.ubuntu.com/focal/current/SHA256SUMS"
  output_directory          = "output"
  shutdown_command          = "rm -f /home/ubuntu/.ssh/authorized_keys && sudo rm -f /root/.ssh/authorized_keys && echo 'packer' | sudo -S shutdown -P now"
  disk_size                 = "10G"
  format                    = "qcow2"
  http_directory            = "http"
  ssh_username              = "ubuntu"
  ssh_private_key_file      = "~/.ssh/id_ed25519"
  ssh_port                  = 22
  ssh_clear_authorized_keys = true
  ssh_timeout               = "60m"
  memory                    = 4096
  disk_image                = true
  disk_interface            = "virtio"
  boot_wait                 = "1m"
  use_default_display       = true
  vm_name                   = "focal"
  qemuargs = [
    ["-display", "none"],
    ["-cdrom", "disk-ssh-pub-ubuntu.img"]
  ]
}

build {
  #sources = ["source.qemu.focal", "source.qemu.jammy", "source.qemu.noble"]
  #sources = ["source.qemu.jammy"]
  #sources = ["source.qemu.focal"]
  sources = ["source.qemu.noble"]
}
