#!/bin/bash -xe

basedir=`dirname $0`
if [ "$1" = "install" ] ; then
    sudo cp ${basedir}/nu.dll.womp.plist /Library/LaunchDaemons
    sudo chown root:wheel /Library/LaunchDaemons/nu.dll.womp.plist
    sudo launchctl load /Library/LaunchDaemons/nu.dll.womp.plist
    exit 0
fi

hour=`date +%H`

if [ "$hour" -ge 22 -a "$hour" -lt 8 ] ; then
    pmset -a womp 0
    echo "WOMP off"
else
    pmset -a womp 1
    echo "WOMP off"
fi
