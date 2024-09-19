#!/bin/bash

[[ ! -f "$1" ]] && echo "Input hex file $1 not present" && exit 1
[[ -f "$2" ]] && echo "Output bin file $2 already present" && exit 1

xxd -r -p $1 > $2
chmod +x $2
$2 -v
