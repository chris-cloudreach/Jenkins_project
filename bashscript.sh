#!/bin/bash
aws logs describe-log-streams --log-group-name chrisDockerLogGroup --region eu-west-1 | jq > ./CWLogStreams.json
aws logs filter-log-events --log-group-name chrisDockerLogGroup --start-time `date -d 2022-10-01T14:50:00Z`000 --region eu-west-1 | jq > ./CWLogEvents.json
aws logs filter-log-events --log-group-name chrisDockerLogGroup --start-time `date -d 2022-10-01T14:50:00Z`000 --region eu-west-1 | jq .events[].message > ./CWLogMessages.txt

