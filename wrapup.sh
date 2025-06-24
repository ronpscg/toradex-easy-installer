#!/bin/sh

for i in $(seq 1 100) ; do
	cat /dev/urandom > /dev/fb0
done

exit 0
