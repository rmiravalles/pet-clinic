#!/bin/sh
mode=$1
case "$mode" in
'start')
echo "***Starting up the Virtual Frame Buffer on Screen 1***"
/usr/bin/Xvfb :99 -screen 0 1152x900x8 &
;;
'stop')
echo "***Stoping Active Virtual Frame***"
kill -9 $(pgrep Xvfb)
;;
*)
echo " Usage: "
echo " $0 start (start XVFB)"
echo " $0 stop (stop XVFB)"
exit 1
;;
esac
dbus-uuidgen > /var/lib/dbus/machine-id
exit 0

