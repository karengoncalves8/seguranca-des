#!/bin/bash

log_file="/var/log/syslog"
log_date="2026-03-12" 
grep "$log_date" $log_file | grep -E "14:..:.." 