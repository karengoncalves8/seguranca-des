#!/bin/bash

last -x | grep -E 'shutdown|reboot' | awk '{print $1, $2, $3, $4, $5}'