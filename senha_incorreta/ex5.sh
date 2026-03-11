#!/bin/bash

log_file="/var/log/auth.log"
log_output=$(grep "sudo:" "$log_file")

while IFS= read -r line; do
	user=$(echo "$line" | grep -oP '(?<=user=)\S+')
	date=$(echo "$line" | awk '{print $1}')
	reason=$(echo "$line" | grep -oP '(?=rhost=)\S+')
        if [[ -n "$user" && -n "$date" && -n "$reason" ]]; then
		echo "Login rejeitado para o usuário $user em $date, motivo: $reasion"
	fi
done <<< "$log_output"
