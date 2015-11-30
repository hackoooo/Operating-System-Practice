#!/bin/bash
/usr/bin/nasm bf.asm -o bf.bin
/usr/bin/nasm loader.asm -o loader.bin
#重新替换软盘为空盘
/bin/cp bf.img.empty bf.img
dd if=bf.bin of=bf.img bs=512 count=1 conv=notrunc
sudo /bin/mount -o loop bf.img /mnt/floppy
sudo /bin/cp loader.bin /mnt/floppy/
sudo /bin/umount /mnt/floppy
bochs -f bf.bochs
