#!/bin/sh
tar vxf samtools-0.1.19.tar.bz2
cd samtools-0.1.19
make
cd ..
make -f rrbsSnp.mk
gcc -O2 chrLenExtract.c -o chrLenExtract
chmod +x ./chrLenExtract