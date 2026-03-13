#!/bin/bash

log_file="/var/log/auth.log"
log_output=$(grep "sudo:" "$log_file")

while IFS= read -r line; do
	user=$(echo "$line" | grep -oP '(?<=user=)\S+')
	date=$(echo "$line" | awk '{print $1}')
        if [[ -n "$user" && -n "$date" ]]; then
		echo "Usuário $user executou sudo em $date"
	fi
done <<< "$log_output"
