#!/bin/sh
set -x
convert "$1" -define icon:auto-resize=256,64,48,32,16 favicon.ico
