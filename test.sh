#!/bin/bash

set -v

for f in $(find /usr/lib* -name "libgfortran*")
do
  ls -l $f
done

whereis -l | grep lib
whereis libgfortran

echo "int main () { return 0; }" > main.c
gcc main.c -o main -lgfortran
./main
