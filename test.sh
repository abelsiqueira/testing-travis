#!/bin/bash

set -ev

for f in $(find /usr/lib* -name "libgfortran*")
do
  ls -l $f
  objdump -f $f | grep GFORTRAN_1.4
done

