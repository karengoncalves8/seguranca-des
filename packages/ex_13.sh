#!/bin/bash

log_file="/var/log/auth.log"

grep -E "apt|apt-get|dpkg" "$log_file" | awk '{print $1, $2, $3, $5, $6, $7, $8, $9}'