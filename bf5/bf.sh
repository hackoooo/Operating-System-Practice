#!/bin/bash
/usr/bin/nasm bf.asm -o bf.bin
dd if=bf.bin of=bf.img bs=512 count=10 conv=notrunc
bochs -f bf.bochs


