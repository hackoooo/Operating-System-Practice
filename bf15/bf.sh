#!/bin/bash
#重新替换软盘为空盘
/bin/cp bf.img.empty bf.img
make $1
bochs -f bf.bochs
