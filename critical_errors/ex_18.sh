#!/bin/bash

log_file="/var/log/auth.log"

grep "Failed" "$log_file" | awk '{print $1, $2, $3, $9, $11}'