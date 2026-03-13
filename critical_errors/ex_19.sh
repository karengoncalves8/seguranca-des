#!/bin/bash

log_file="/var/log/auth.log"

tail -f "$log_file" | grep --line-buffered "Failed"