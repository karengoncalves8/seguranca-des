#!/bin/bash

log_file="/var/log/auth.log"
log_output=$(grep "authentication failed" "$log_file")

declare -A result

while IFS= read -r line; do
	user=$(echo "$line" | grep -oP '(?<=USER=)\S+')
 	if [[ -n "$user" ]]; then
		if [[ -n "${result["$user"]}" ]]; then
			((result["$user"]++))
		else
			result["user"]=1
		fi
	fi
done <<< "$log_output"

echo "Usuário encontrados:"
for key in "${!result[@]}"; do
	echo "User: $key, tentativas: ${result[$key]}"
done
