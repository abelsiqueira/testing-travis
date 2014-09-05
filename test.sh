#!/bin/bash

set -v

for f in $(find /usr/lib* -name "libgfortran*")
do
  ls -l $f
  objdump -f -T $f | grep GFORTRAN_1.4
done

whereis libgfortran

