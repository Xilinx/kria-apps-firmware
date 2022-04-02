# Kria Starter Kits Application Firmware

This repository contains application-specific PL firmware files for the Kria
Starter Kits.

Each set of firmware files consists of:
1. PL bitstream binary
2. Xclbin binary (optional)
3. Device tree overlay source
4. json file required by dfx-mgr
5. Vitis AI models (optional)

## Supported KV260 application firmware
1. smartcam
2. aibox-reid
3. defect-detect
4. nlp-smartvision
5. benchmark-b4096

## Supported KR260 application firmware
1. tsn-rs485pmod

# License

The XCLBIN, BITSTREAM or BIT, and XMODEL files distributed with this project are
provided in binary form under the following free and permissive binary-only
license; source files are not provided. While the following free and permissive
license is similar to the BSD open source license, it is NOT the BSD open source
license or any other OSI-approved open-source license.

The device tree source (DTSI) files distributed with this project are
released under the terms of the GNU General Public License version 2.
