#!/bin/bash

log_file ="/var/log/dpkg.log"

grep "install " "$log_file"* | grep "$(date --date='7 days ago' '+%Y-%m-%d')" | awk '{print $1, $2, $3, $4, $5, $6}'