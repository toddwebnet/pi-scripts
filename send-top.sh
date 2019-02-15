#!/bin/bash
source variables.sh

TOP_URL=$(read_var TOP_URL .env)


# source ./variables.sh
echo "time=`top -l 1`" | curl -d @- $TOP_URL
