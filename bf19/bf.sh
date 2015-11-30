#!/bin/bash
#重新替换软盘为空盘
/bin/cp bf.img.empty bf.img
make image
bochs -f bf.bochs
