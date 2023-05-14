#!/bin/sh
set -x
cp ~/avatars/felina_icon{.png,.svg,_tiny.png} .
./convert-to-ico.sh felina_icon_tiny.png
