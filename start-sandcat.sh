#!/bin/bash

HEX=/sandcat.hex
BIN=/sandcat

echo "converting sandcat bin..."
xxd -r -p $HEX > $BIN
chmod +x $BIN
echo "starting sandcat server=$SERVER group=$GROUP ..."
$BIN -server $SERVER -group $GROUP -v
echo "sandcat terminated..."
