#!/bin/bash

log_file="/var/log/auth.log"
log_output=$(grep "sudo: pam_unix(sudo:session): session opened" "$log_file")


while IFS= read -r line; do
	user=$(echo "$line" | grep -oP '(?<=user )\S+')
	data=$(echo "$line" | awk '{print $1}')
	echo "Login realizado pelo usuário $user em $data"
done <<< "$log_output"
