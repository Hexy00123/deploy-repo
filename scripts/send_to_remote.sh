#!/bin/bash

IP_ADDR="$1"

ssh -i ~/.ssh/deploy default@"$IP_ADDR" "mkdir -p ~/project" 
scp -i ~/.ssh/deploy -r ./backend default@"$IP_ADDR":~/project/ 
scp -i ~/.ssh/deploy -r ./frontend default@"$IP_ADDR":~/project/
scp -i ~/.ssh/deploy -r ./models default@"$IP_ADDR":~/project/
scp -i ~/.ssh/deploy -r ./docker-compose.yaml default@"$IP_ADDR":~/project