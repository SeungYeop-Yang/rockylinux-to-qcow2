# ubuntu24 cloud image to qcow2

Ubuntu24 Cloud image to qcow2 format

# history

- 12/07/24 Repo was creted

# how to run

```
$ docker compose pull

$ docker compose run --rm dev-env
05:26:05 ubuntu@3a489f33f21f dev-env ±|main ✗|→ time ./build.sh
Installed plugin github.com/hashicorp/qemu v1.1.0 in "/home/ubuntu/.config/packer/plugins/github.com/hashicorp/qemu/packer-plugin-qemu_v1.1.0_x5.0_linux_amd64"
qemu.noble: output will be in this color.

==> qemu.noble: Retrieving ISO
==> qemu.noble: Trying https://cloud-images.ubuntu.com/noble/current/noble-server-cloudimg-amd64.img
==> qemu.noble: Trying https://cloud-images.ubuntu.com/noble/current/noble-server-cloudimg-amd64.img?checksum=sha256%3A7be7793856d65784a593a624e841dbcf94aa36d3a9511f4085a808c4564f9d1e
    qemu.noble: noble-server-cloudimg-amd64.img 580.52 MiB / 580.52 MiB [================================================================================] 100.00% 32s
==> qemu.noble: https://cloud-images.ubuntu.com/noble/current/noble-server-cloudimg-amd64.img?checksum=sha256%3A7be7793856d65784a593a624e841dbcf94aa36d3a9511f4085a808c4564f9d1e => /home/ubuntu/.cache/packer/4c16d73884405f33c9c6c34c22fedb82a48e4b65.iso
==> qemu.noble: Copying hard drive...
==> qemu.noble: Resizing hard drive...
==> qemu.noble: Starting HTTP server on port 8866
==> qemu.noble: Found port for communicator (SSH, WinRM, etc): 3684.
==> qemu.noble: Using existing SSH private key
==> qemu.noble: Looking for available port between 5900 and 6000 on 127.0.0.1
==> qemu.noble: Starting VM, booting disk image
==> qemu.noble: Overriding default Qemu arguments with qemuargs template option...
==> qemu.noble: Waiting 10s for boot...
==> qemu.noble: Connecting to VM via VNC (127.0.0.1:5955)
==> qemu.noble: Typing the boot commands over VNC...
    qemu.noble: Not using a NetBridge -- skipping StepWaitGuestAddress
==> qemu.noble: Using SSH communicator to connect: 127.0.0.1
==> qemu.noble: Waiting for SSH to become available...
==> qemu.noble: Connected to SSH!
==> qemu.noble: Gracefully halting virtual machine...
==> qemu.noble: Converting hard drive...
Build 'qemu.noble' finished after 17 minutes 29 seconds.

==> Wait completed after 17 minutes 29 seconds

==> Builds finished. The artifacts of successful builds are:
--> qemu.noble: VM files in directory: output

real    17m34.362s
user    15m51.413s
sys     3m39.363s
05:43:50 ubuntu@3a489f33f21f dev-env ±|main ✗|→
```

If you have QEMU/KVM enabled machine, then you can build way faster:

```
$ time ./build.sh
qemu.noble: output will be in this color.

==> qemu.noble: Retrieving ISO
==> qemu.noble: Trying https://cloud-images.ubuntu.com/noble/current/noble-server-cloudimg-amd64.img
==> qemu.noble: Trying https://cloud-images.ubuntu.com/noble/current/noble-server-cloudimg-amd64.img?checksum=sha256%3A7be7793856d65784a593a624e841dbcf94aa36d3a9511f4085a808c4564f9d1e
==> qemu.noble: https://cloud-images.ubuntu.com/noble/current/noble-server-cloudimg-amd64.img?checksum=sha256%3A7be7793856d65784a593a624e841dbcf94aa36d3a9511f4085a808c4564f9d1e => /home/sajang/.cache/packer/4c16d73884405f33c9c6c34c22fedb82a48e4b65.iso
==> qemu.noble: Copying hard drive...
==> qemu.noble: Resizing hard drive...
==> qemu.noble: Starting HTTP server on port 8807
==> qemu.noble: Found port for communicator (SSH, WinRM, etc): 2604.
==> qemu.noble: Using existing SSH private key
==> qemu.noble: Looking for available port between 5900 and 6000 on 127.0.0.1
==> qemu.noble: Starting VM, booting disk image
==> qemu.noble: Overriding default Qemu arguments with qemuargs template option...
==> qemu.noble: Waiting 10s for boot...
==> qemu.noble: Connecting to VM via VNC (127.0.0.1:5933)
==> qemu.noble: Typing the boot commands over VNC...
    qemu.noble: Not using a NetBridge -- skipping StepWaitGuestAddress
==> qemu.noble: Using SSH communicator to connect: 127.0.0.1
==> qemu.noble: Waiting for SSH to become available...
==> qemu.noble: Connected to SSH!
==> qemu.noble: Gracefully halting virtual machine...
==> qemu.noble: Converting hard drive...
Build 'qemu.noble' finished after 2 minutes 11 seconds.

==> Wait completed after 2 minutes 11 seconds

==> Builds finished. The artifacts of successful builds are:
--> qemu.noble: VM files in directory: output

real	2m15.321s
user	1m41.568s
sys	0m47.362s
$
```
