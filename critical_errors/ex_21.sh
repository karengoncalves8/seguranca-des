#!/bin/bash

service="sshd"  
journalctl -u $service | grep -i -E "error|warning"