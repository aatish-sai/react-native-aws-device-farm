#!/bin/bash
stauts=true
while $stauts
do
    state=$(aws devicefarm get-upload --arn $1 | jq '.upload.status')
    echo "State is $state"
    if [[ $state == "FAILED" ]]
    then
        status=false
    fi
    if [[ $state == "SUCCEEDED" ]]
    then
        status=false
    fi
    sleep 5
done
