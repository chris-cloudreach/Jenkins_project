#!/bin/bash
aws logs describe-log-streams --log-group-name chrisDockerLogGroup --region eu-west-1 | jq > ./CWLogStreams.txt