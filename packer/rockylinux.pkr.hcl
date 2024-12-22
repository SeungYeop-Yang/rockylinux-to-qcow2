
packer {
  required_plugins {
    qemu = {
      version = ">= 1.1.0"
      source  = "github.com/hashicorp/qemu"
    }
  }
}

source "qemu" "rocky95" {
  headless                  = true
  accelerator               = "none" #"hvf" to run this packer template on MacOS, "kvm" if not
  iso_url                   = "https://dl.rockylinux.org/pub/rocky/9/images/x86_64/Rocky-9-GenericCloud-Base.latest.x86_64.qcow2"
  iso_checksum              = "file:./ROCKYSHA256SUMS"
  output_directory          = "output/rocky95"
  shutdown_command          = "rm -f /home/packer/.ssh/authorized_keys && sudo rm -f /root/.ssh/authorized_keys && echo 'packer' | sudo -S shutdown -P now"
  disk_size                 = "10G"
  format                    = "qcow2"
  http_directory            = "http"
  ssh_username              = "packer"
  ssh_private_key_file      = "~/.ssh/id_ed25519"
  ssh_port                  = 22
  ssh_clear_authorized_keys = true
  ssh_timeout               = "60m"
  memory                    = 4096
  disk_image                = true
  disk_interface            = "virtio"
  net_device                = "virtio-net"
  boot_wait                 = "1m"
  use_default_display       = true
  vm_name                   = "rocky95"
  qemuargs = [
    ["-cpu", "host"],
    ["-display", "none"],
    ["-cdrom", "disk-ssh-pub.img"]
  ]
}


build {
  sources = ["source.qemu.rocky95"]
}
