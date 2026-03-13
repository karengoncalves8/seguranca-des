#!/bin/bash

journalctl --since "1 week ago" | cut -d' ' -f5 | sort | uniq -c | sort -nr