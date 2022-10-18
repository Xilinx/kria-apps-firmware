# Kria Starter Kits Application Firmware

This repository contains application-specific PL firmware files for the Kria
Starter Kits.

For kr260 and kv260, each set of firmware files consists of:
1. PL bitstream binary
2. Xclbin binary (optional)
3. Device tree overlay source
4. json file required by dfx-mgr

For k26-dfx/2rp_design each set of firmware files consists of shell and reconfigurable module(RM) files.
**Shell files**
1. PL base shell bitstream
2. Shell device tree overlay source
3. shell json required by dfx-mgr.

**RM files**
There are two DFX slots on k26 DFX design. RM has two directories, one corresponding to each slot. 
For each DFX slot, the following RM files are provided:
1. RM partial bitfile
2. RM Device tree overlay source
3. Accelerator json required by dfx-mgr.
4. Xclbin binary (optional)

## Supported KV260 application firmware
1. smartcam
2. aibox-reid
3. defect-detect
4. nlp-smartvision
5. benchmark-b4096

## Supported KR260 application firmware
1. tsn-rs485pmod
2. mv-camera

## Supported k26-dfx/2rp_design application firmware
1. AES192
2. AES128
3. FFT
4. FIR

## Build and Install
At runtime devicetree overlay (*.dtbo) and fpga configuration data (*.bin)
are needed as binaries. Make flow is introduced to generate the required binaries
for all supported applications listed above. Compiling the binaries are dependent
on 'bootgen utility' a dependent tool needed before running make.
Following are example illustrations

### Runtime on Xilinx target

Users can compile and Install binaries at runtime on xilinx target using the
following commands.

For kr-260 and kv-260
```
sudo apt install bootgen-xlnx
git clone https://github.com/Xilinx/kria-apps-firmware.git
cd kria-apps-firmware
sudo make install
```

For k26-dfx/2rp_design
```
sudo apt install bootgen-xlnx
git clone https://github.com/Xilinx/kria-apps-firmware.git
cd kria-apps-firmware/k26-dfx/2rp_design
sudo make install
```


### Compilation on Linux Host machine
Source the 'bootgen utility' a dependent tool before running make. You can install
Bootgen from the Vivado Design Suite installer see (UG973) for all possible
installation options.
Run make on a linux host machine to build reqiured binaries.

For kr-260 and kv-260
```
git clone https://github.com/Xilinx/kria-apps-firmware.git
cd kria-apps-firmware
sudo make
```

For k26-dfx/2rp_design
```
git clone https://github.com/Xilinx/kria-apps-firmware.git
cd kria-apps-firmware/k26-dfx/2rp_design
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
