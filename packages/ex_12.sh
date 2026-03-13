#!/bin/bash

log_file="/var/log/dpkg.log"

grep "remove " "$log_file"* | awk '{print $1, $2, $3, $4, $5, $6}'