#!/bin/bash

HEX=/sandcat.hex
BIN=/sandcat

echo "converting sandcat bin..."
xxd -r -p $HEX > $BIN
chmod +x $BIN
echo "starting sandcat..."
$BIN -server $SERVER -group red -v
echo "sandcat terminated..."
