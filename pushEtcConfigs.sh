#!/bin/bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]:-$0}"; )" &> /dev/null && pwd 2> /dev/null; )";
cp -v $SCRIPT_DIR/etc/i3blocks.conf /etc/i3blocks.conf
