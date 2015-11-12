#!/bin/sh

hostname=$(echo $0 | cut -f 1 -d '.')
echo Connecting to $hostname
rdesktop -g 1600x950 $hostname
