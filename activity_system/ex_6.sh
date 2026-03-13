#!/bin/bash

last -x | grep 'reboot' | head -n 1 | awk '{print "Último boot foi em:", $5, $6, $7, $8}'