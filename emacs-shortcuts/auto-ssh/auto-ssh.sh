#!/bin/bash

readonly ENVIRONMENT=$1
readonly USER="tms"
readonly PASS_PHRASE="yco@nepse777+"

readonly QA_1="192.168.50.70"
readonly QA_2="192.168.50.62"

declare -A ENVIRONMENTS=( ["QA-1"]="$QA_1" ["QA-2"]="$QA_2")

readonly IP="${ENVIRONMENTS["${ENVIRONMENT}"]}"
echo -e "Connecting to server ... $IP (${ENVIRONMENT}) \n"

sshpass -p "${PASS_PHRASE}" ssh -o StrictHostKeyChecking=no "${USER}@${IP}"

echo "*** Connection success ***"





