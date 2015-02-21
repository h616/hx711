KERNELDIR := /usr/src/linux 
PWD := $(shell pwd)

.PHONY: clean

obj-m := hx711.o

default:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules

clean:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) clean
