#!/bin/bash
source ./variables.sh
#URL="http://faculty180-interfolio-vagrant/test/"
# echo $TOP_URL
echo "time=`top -l 1`" | curl -d @- $TOP_URL
