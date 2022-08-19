# Kria Starter Kits Application Firmware

This repository contains application-specific PL firmware files for the Kria
Starter Kits.

Each set of firmware files consists of:
1. PL bitstream binary
2. Xclbin binary (optional)
3. Device tree overlay source
4. json file required by dfx-mgr

## Supported KV260 application firmware
1. smartcam
2. aibox-reid
3. defect-detect
4. nlp-smartvision
5. benchmark-b4096

## Supported KR260 application firmware
1. tsn-rs485pmod
2. mv-camera

## Build and Install
At runtime devicetree overlay (*.dtbo) and fpga configuration data (*.bin)
are needed as binaries. Make flow is introduced to generate the required binaries
for all supported applications listed above. Compiling the binaries are dependent
on 'bootgen utility' a dependent tool needed before running make.
Following are example illustrations

### Runtime on Xilinx target

Users can compile and Install binaries at runtime on xilinx target using the
following commands.

```
sudo apt install bootgen-xlnx
git clone https://github.com/Xilinx/kria-apps-firmware.git
cd kria-apps-firmware
sudo make install
```

### Compilation on Linux Host machine
Source the 'bootgen utility' a dependent tool before running make. You can install
Bootgen from the Vivado Design Suite installer see (UG973) for all possible
installation options.
Run make on a linux host machine to build reqiured binaries.

```
git clone https://github.com/Xilinx/kria-apps-firmware.git
cd kria-apps-firmware
sudo make
```

# License

The XCLBIN and BITSTREAM or BIT files distributed with this project are
provided in binary form under free and permissive binary-only licenses; source
files are not provided. While the free and permissive licenses are similar to
the BSD open source license, it is NOT the BSD open source license or any other
OSI-approved open-source license.

The device tree source (DTSI) files distributed with this project are
released under the terms of the GNU General Public License version 2.
