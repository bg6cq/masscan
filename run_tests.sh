#!/bin/sh

/bin/masscan -p 80 202.38.64.1 --wait=0 | grep 80 
