#!/bin/bash

log_file="/var/log/syslog"

grep -i -E "critical|fatal|segfault" "$log_file"