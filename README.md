# RockyLinux cloud image to qcow2

RockyLinux Cloud image to qcow2 format

# history

- 12/21/24 Repo was creted

# Debugging Status

- 12/21/24 **Blocked**

I don't have a machine that supports "Secure Virtual Machine(SVM) feature, which is required for running RockyLinux 9.5.
My daughter took my 2019 MacBook Pro, I can't test this repo until I get a decent machine that supports SVM.

```
$ cat /proc/cpuinfo | grep svm
$
```

# how to run

```
$ docker compose pull

$ docker compose run --rm dev-env
```
