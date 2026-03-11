#!/bin/bash

log_file="/var/log/auth.log"
log_output=$(grep "su" "$log_file")

while IFS= read -r line; do
	user=$(echo "$line" | grep -oP '(?<=user= )\S+')
	target=$(echo "$line" | grep -oP '(?<=for user )\S+')
        if [[ -n "$user" && -n "$target" ]]; then
		echo "Usuário $user tentou mudar para $target"
	fi
done <<< "$log_output"
