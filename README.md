# RockyLinux cloud image to qcow2

RockyLinux Cloud image to qcow2 format

# history

- 12/22/24 Release v0.1.0
- 12/21/24 Repo was creted

# Debugging Status

- 12/22/24 **Done**

I used my baremetal 2013 MacPro Ubuntu 24.04.1 with the latest QEMU/KVM to run Packer template

- 12/21/24 **Blocked**

I don't have a machine that supports "Secure Virtual Machine (SVM)" feature, which is required for running RockyLinux 9.5.
My daughter took my 2019 MacBook Pro, I can't test this repo until I get a decent machine that supports SVM.



```
$ cat /proc/cpuinfo | grep svm
$
```

# how to run

I ran on my baremetal 2013 MacPro Ubuntu 24.04.1 with the latest QEMU/KVM

```
$ time ./build.sh
qemu.rocky95: output will be in this color.

==> qemu.rocky95: Retrieving ISO
==> qemu.rocky95: Trying https://dl.rockylinux.org/pub/rocky/9/images/x86_64/Rocky-9-GenericCloud-Base.latest.x86_64.qcow2
==> qemu.rocky95: Trying https://dl.rockylinux.org/pub/rocky/9/images/x86_64/Rocky-9-GenericCloud-Base.latest.x86_64.qcow2?checksum=sha256%3A069493fdc807300a22176540e9171fcff2227a92b40a7985a0c1c9e21aeebf57
==> qemu.rocky95: https://dl.rockylinux.org/pub/rocky/9/images/x86_64/Rocky-9-GenericCloud-Base.latest.x86_64.qcow2?checksum=sha256%3A069493fdc807300a22176540e9171fcff2227a92b40a7985a0c1c9e21aeebf57 => /home/sajang/.cache/packer/608da2ea973d87e03bb2a3ea3b08113112f63052.iso
==> qemu.rocky95: Copying hard drive...
==> qemu.rocky95: Resizing hard drive...
==> qemu.rocky95: Starting HTTP server on port 8670
==> qemu.rocky95: Found port for communicator (SSH, WinRM, etc): 3685.
==> qemu.rocky95: Using existing SSH private key
==> qemu.rocky95: Looking for available port between 5900 and 6000 on 127.0.0.1
==> qemu.rocky95: Starting VM, booting disk image
    qemu.rocky95: The VM will be run headless, without a GUI. If you want to
    qemu.rocky95: view the screen of the VM, connect via VNC without a password to
    qemu.rocky95: vnc://127.0.0.1:5994
==> qemu.rocky95: Overriding default Qemu arguments with qemuargs template option...
==> qemu.rocky95: Waiting 15s for boot...
==> qemu.rocky95: Connecting to VM via VNC (127.0.0.1:5994)
==> qemu.rocky95: Typing the boot commands over VNC...
    qemu.rocky95: Not using a NetBridge -- skipping StepWaitGuestAddress
==> qemu.rocky95: Using SSH communicator to connect: 127.0.0.1
==> qemu.rocky95: Waiting for SSH to become available...
==> qemu.rocky95: Connected to SSH!
==> qemu.rocky95: Provisioning with shell script: /tmp/packer-shell2672626607
    qemu.rocky95: Hello World!
    qemu.rocky95: NAME="Rocky Linux"
    qemu.rocky95: VERSION="9.5 (Blue Onyx)"
    qemu.rocky95: ID="rocky"
    qemu.rocky95: ID_LIKE="rhel centos fedora"
    qemu.rocky95: VERSION_ID="9.5"
    qemu.rocky95: PLATFORM_ID="platform:el9"
    qemu.rocky95: PRETTY_NAME="Rocky Linux 9.5 (Blue Onyx)"
    qemu.rocky95: ANSI_COLOR="0;32"
    qemu.rocky95: LOGO="fedora-logo-icon"
    qemu.rocky95: CPE_NAME="cpe:/o:rocky:rocky:9::baseos"
    qemu.rocky95: HOME_URL="https://rockylinux.org/"
    qemu.rocky95: VENDOR_NAME="RESF"
    qemu.rocky95: VENDOR_URL="https://resf.org/"
    qemu.rocky95: BUG_REPORT_URL="https://bugs.rockylinux.org/"
    qemu.rocky95: SUPPORT_END="2032-05-31"
    qemu.rocky95: ROCKY_SUPPORT_PRODUCT="Rocky-Linux-9"
    qemu.rocky95: ROCKY_SUPPORT_PRODUCT_VERSION="9.5"
    qemu.rocky95: REDHAT_SUPPORT_PRODUCT="Rocky Linux"
    qemu.rocky95: REDHAT_SUPPORT_PRODUCT_VERSION="9.5"
    qemu.rocky95: Rocky Linux release 9.5 (Blue Onyx)
    qemu.rocky95: Rocky Linux release 9.5 (Blue Onyx)
    qemu.rocky95: Rocky Linux release 9.5 (Blue Onyx)
==> qemu.rocky95: Gracefully halting virtual machine...
==> qemu.rocky95: Converting hard drive...
Build 'qemu.rocky95' finished after 55 seconds 20 milliseconds.

==> Wait completed after 55 seconds 20 milliseconds

==> Builds finished. The artifacts of successful builds are:
--> qemu.rocky95: VM files in directory: output/rocky95

real	0m57.897s
user	0m58.161s
sys	0m13.094s

$
```
