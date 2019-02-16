#!/bin/bash
source variables.sh

TOP_URL=$(read_var TOP_URL .env)

echo "top=`top -n 1 -b | tr '|' '^' | tr '\n' '|' `" | curl -d @- $TOP_URL
