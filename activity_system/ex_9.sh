#!/bin/bash

journalctl -u --since "1 hour ago" | grep -i -E "started|stopped" | awk '{print $1, $2, $3, $4, $5, $6}'