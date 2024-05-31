#!/bin/bash
sleep 3 &&
conky -c ~/.conky/conky-xeno.conf --daemonize '>>' /dev/null '2>&1'
