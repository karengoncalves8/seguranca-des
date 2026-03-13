#!/bin/bash

log_file="/var/log/syslog"

grep -i -E "segfault|killed" "$log_file"