# RockyLinux cloud image to qcow2

RockyLinux Cloud image to qcow2 format

# history

- 12/21/24 Repo was creted

# Debugging Status

- 12/21/24 **Blocked**

I don't have a machine that supports "Secure Virtual Machine (SVM)" feature, which is required for running RockyLinux 9.5.
My daughter took my 2019 MacBook Pro, I can't test this repo until I get a decent machine that supports SVM.

```
$ cat /proc/cpuinfo | grep svm
$
```

# how to run

TBD.

```
==> qemu.rocky95: Using SSH communicator to connect: 127.0.0.1
2024/12/22 11:20:32 packer-plugin-qemu_v1.1.0_x5.0_linux_amd64 plugin: 2024/12/22 11:20:32 Connected to VNC desktop: QEMU (rocky95)
2024/12/22 11:20:32 packer-plugin-qemu_v1.1.0_x5.0_linux_amd64 plugin: 2024/12/22 11:20:32 [INFO] Waiting for SSH, up to timeout: 1h0m0s
==> qemu.rocky95: Waiting for SSH to become available...
2024/12/22 11:20:32 packer-plugin-qemu_v1.1.0_x5.0_linux_amd64 plugin: 2024/12/22 11:20:32 [INFO] Attempting SSH connection to 127.0.0.1:3911...
2024/12/22 11:20:32 packer-plugin-qemu_v1.1.0_x5.0_linux_amd64 plugin: 2024/12/22 11:20:32 [DEBUG] reconnecting to TCP connection for SSH
2024/12/22 11:20:32 packer-plugin-qemu_v1.1.0_x5.0_linux_amd64 plugin: 2024/12/22 11:20:32 [DEBUG] handshaking with SSH
2024/12/22 11:21:32 packer-plugin-qemu_v1.1.0_x5.0_linux_amd64 plugin: 2024/12/22 11:21:32 [DEBUG] SSH handshake err: Timeout during SSH handshake
2024/12/22 11:21:39 packer-plugin-qemu_v1.1.0_x5.0_linux_amd64 plugin: 2024/12/22 11:21:39 [INFO] Attempting SSH connection to 127.0.0.1:3911...
2024/12/22 11:21:39 packer-plugin-qemu_v1.1.0_x5.0_linux_amd64 plugin: 2024/12/22 11:21:39 [DEBUG] reconnecting to TCP connection for SSH
2024/12/22 11:21:39 packer-plugin-qemu_v1.1.0_x5.0_linux_amd64 plugin: 2024/12/22 11:21:39 [DEBUG] handshaking with SSH
2024/12/22 11:21:39 packer-plugin-qemu_v1.1.0_x5.0_linux_amd64 plugin: 2024/12/22 11:21:39 [DEBUG] SSH handshake err: ssh: handshake failed: ssh: unable to authenticate, attempted methods [none publickey], no supported methods remain
2024/12/22 11:21:39 packer-plugin-qemu_v1.1.0_x5.0_linux_amd64 plugin: 2024/12/22 11:21:39 [DEBUG] Detected authentication error. Increasing handshake attempts.
2024/12/22 11:21:46 packer-plugin-qemu_v1.1.0_x5.0_linux_amd64 plugin: 2024/12/22 11:21:46 [INFO] Attempting SSH connection to 127.0.0.1:3911...
2024/12/22 11:21:46 packer-plugin-qemu_v1.1.0_x5.0_linux_amd64 plugin: 2024/12/22 11:21:46 [DEBUG] reconnecting to TCP connection for SSH
2024/12/22 11:21:46 packer-plugin-qemu_v1.1.0_x5.0_linux_amd64 plugin: 2024/12/22 11:21:46 [DEBUG] handshaking with SSH
2024/12/22 11:21:47 packer-plugin-qemu_v1.1.0_x5.0_linux_amd64 plugin: 2024/12/22 11:21:47 [DEBUG] SSH handshake err: ssh: handshake failed: ssh: unable to authenticate, attempted methods [none publickey], no supported methods remain
2024/12/22 11:21:47 packer-plugin-qemu_v1.1.0_x5.0_linux_amd64 plugin: 2024/12/22 11:21:47 [DEBUG] Detected authentication error. Increasing handshake attempts.
2024/12/22 11:21:54 packer-plugin-qemu_v1.1.0_x5.0_linux_amd64 plugin: 2024/12/22 11:21:54 [INFO] Attempting SSH connection to 127.0.0.1:3911...
2024/12/22 11:21:54 packer-plugin-qemu_v1.1.0_x5.0_linux_amd64 plugin: 2024/12/22 11:21:54 [DEBUG] reconnecting to TCP connection for SSH
2024/12/22 11:21:54 packer-plugin-qemu_v1.1.0_x5.0_linux_amd64 plugin: 2024/12/22 11:21:54 [DEBUG] handshaking with SSH
2024/12/22 11:21:54 packer-plugin-qemu_v1.1.0_x5.0_linux_amd64 plugin: 2024/12/22 11:21:54 [DEBUG] SSH handshake err: ssh: handshake failed: ssh: unable to authenticate, attempted methods [none publickey], no supported methods remain
2024/12/22 11:21:54 packer-plugin-qemu_v1.1.0_x5.0_linux_amd64 plugin: 2024/12/22 11:21:54 [DEBUG] Detected authentication error. Increasing handshake attempts.

```
