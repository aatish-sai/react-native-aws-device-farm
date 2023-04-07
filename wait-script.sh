#!/bin/bash
stauts=0
while [ $status -eq 0 ]
do
    state=$((aws devicefarm get-upload --arn $1 | jq '.upload.status'))
    if [ $state = "FAILED" ]
    then
        $status = 1
    fi
    if [ $state = "SUCCEEDED" ]
    then
        $status = 1
    fi
    sleep 5
done
