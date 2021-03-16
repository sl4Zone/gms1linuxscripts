#!/bin/bash

if [[ -e game && ! -d game ]]; then
    echo "The 'game' folder was not found, please move the script outside of the 'game' folder and make sure it contains a file named 'runner'"
    exit 1
fi


if [[ ! -d libs ]]; then
    mkdir libs
fi


revascrypto=$(locate libcrypto.so.1.0.0 | grep i386 | grep -v old)
cp $revascrypto libs
revassl=$(locate libssl.so.1.0.0 | grep i386 | grep -v old)
cp $revassl libs


echo "Configuration done, now run 'pleaserun.sh' to start the game."
