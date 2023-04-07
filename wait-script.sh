#!/bin/bash
status=0
while [[ $status -eq 0 ]]; do
    state=$(aws devicefarm get-upload --arn $1 | jq '.upload.status')
    echo $state
    if [[ $state == '"FAILED"' ]]; then
        status=1
    elif [[ $state == '"SUCCEEDED"' ]]; then
        status=1
    fi
    sleep 5
done
