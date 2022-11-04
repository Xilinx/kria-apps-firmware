# Path to board specific firmwares to build.
BOARDS := boards/

# Path to 2rp dfx designs
K26_DFX := k26-dfx/2rp_design

default: all

all: build

build: $(BOARDS) $(K26_DFX)
	make -C $(BOARDS)
	make -C $(K26_DFX)

clean:
	make -C $(BOARDS) clean
	make -C $(K26_DFX) clean

install:
	make -C $(BOARDS) install DESTDIR=$(DESTDIR)
	make -C $(K26_DFX) install DESTDIR=$(DESTDIR)

.PHONY: default all build clean install
