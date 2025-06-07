#!/bin/bash

cd $(dirname $0)/package/img

RESOLUTIONS="16 32 48 64 96 128 192"

for size in $RESOLUTIONS ; do
    echo "icon.svg --> icon-${size}.png"
    inkscape.com -w $size -h $size -o icon-${size}.png icon.svg
done

echo "icon-*.png --> icon.ico"
bash -c "convert icon-{${RESOLUTIONS// /,}}.png icon.ico"
