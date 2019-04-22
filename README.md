# Keystone: Open-Source Secure Enclaves for RISC-V Processors

This is a temporary anonymous copy of the keystone framework for use
by reviewers only.

Do not use this repository for deployment or testing of Keystone.

See deanonymize.sh for the actively developed repository and license information.

A complete setup will take ~14GB, and may take over an hour to build on some machines.

We have tested builds on Ubuntu 16/18.


# Quick Start

```bash
git clone https://github.com/keystone-anonymous/keystone
cd keystone
```

Install Dependencies (Ubuntu)

```
sudo apt update
sudo apt install autoconf automake autotools-dev bc bison build-essential curl \
expat libexpat1-dev flex gawk gcc git gperf libgmp-dev libmpc-dev libmpfr-dev \
libtool texinfo tmux patchutils zlib1g-dev wget bzip2 patch vim-common lbzip2 \
python pkg-config libglib2.0-dev libpixman-1-dev device-tree-compiler
```

Setup Tools and Submodules
```
./fast-setup.sh
```

Build All for QEMU
```
make
```

Run QEMU
```
./scripts/run-qemu.sh
```

Test

login with `root`/`sifive`.

```
[in QEMU machine]
insmod keystone-driver.ko
./test
```

Terminate QEMU
```
poweroff
```

## Demo app
See keystone-demo README after you've run all the tests above successfully.