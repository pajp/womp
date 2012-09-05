#!/bin/bash
target=womp
if [ -d $target ] ; then
    echo "There is already a directory called '$target'."
    exit 1
fi

set -ex
git clone https://github.com/pajp/womp.git $target
cd $target
./setwomp.sh install