# Copyright (C) 2022, Advanced Micro Devices, Inc. All rights reserved.
# SPDX-License-Identifier: MIT

# subdirectories of kr260 and kv260 under source directory - one per app
APPS := $(wildcard ./ */*/ */*/)

# *.bit, *.dtsi, *.xclbin and shell.json files under these specific directories
BITS := $(wildcard $(patsubst %,%*.bit,$(APPS)))
DTSIS := $(wildcard $(patsubst %,%*.dtsi,$(APPS)))
XCLBINS := $(wildcard $(patsubst %,%*.xclbin,$(APPS)))
JSONS := $(wildcard $(patsubst %,%*.json,$(APPS)))

# *.dtbo files to generate
DTBOS := $(patsubst %.dtsi,%.dtbo,$(DTSIS))

%.dtbo: %.dtsi
	echo "Generate dtbo for $<"
	dtc -I dts -O dtb -o $@ -@ $<

# *.bif template
BIF_TEMPLATE := template.bif

# *.bif and *.bins files to generate
BIFS := $(patsubst %.bit,%.bif,$(BITS))
BINS := $(patsubst %.bit,%.bin,$(BITS))

%.bif: %.bit
	echo "Generate bin for $<"
	sed 's#@BIT@#$<#' <$(BIF_TEMPLATE) >$@

%.bin: %.bif
	echo "Generate bin for $<"
	bootgen -image $< -arch zynqmp -o $@ -w

default: all

all: bins dtbos
bins: $(BINS)
dtbos: $(DTBOS)

clean:
	rm -f $(BIFS)
	rm -f $(BINS)
	rm -f $(DTBOS)

INSTALLDIR := $(DESTDIR)/lib/firmware/xilinx/k26-dfx-2rp

install: $(BINS) $(DTBOS) $(XCLBINS) $(JSONS)
	for f in $^; do \
	    file=$$(basename $$f); \
	    slot=$$(basename $$(dirname $$f)); \
	    design=$$(basename $$(dirname $$(dirname $$f))); \
	    install -D -m 644 \
	        $$f $(INSTALLDIR)/$$design/$$slot/$$file; \
	done


.PHONY: default all bins dtbos clean install

