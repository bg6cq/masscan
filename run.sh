#!/bin/sh

if [ "$1" == "run_test" ]; then
   /bin/masscan -p 80 202.38.64.1 --wait=0 | grep 80 
else
   /bin/masscan --wait=0 --rate=1000 $@
fi
