# KV260 Firmware

This repository contains PL firmware files for the Kria KV260 AI Starter Kit.

Supported accelerated application firmware:
1. smartcam
2. aibox-reid
3. defect-detect
4. nlp-smartvision

**Note:** The dp firmware enables the PS DP device nodes only and is loaded by
default during boot-up.

Each set of firmware files consists of:
1. PL bitstream binary
2. Xclbin binary
3. Device tree overlay source
4. Vitis AI models (optional)
