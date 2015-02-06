#!/bin/bash
export LE_AWS_HOSTNAME=$(/opt/aws/bin/ec2-metadata -p | cut -d ' ' -f2)
export LE_AWS_INSTANCE=$(/opt/aws/bin/ec2-metadata -i | cut -d '-' -f3)
export LE_NAME=$NODE_ENV-eb-api-$LE_AWS_INSTANCE

if [[ $(/usr/bin/le whoami) != *$LE_NAME* ]]
then
  echo "registering logentries host as $LE_NAME"
  /usr/bin/le register --account-key=$LOGENTRIES_KEY --hostname=$LE_AWS_HOSTNAME --name=$LE_NAME
else
  echo "logentries host $LE_NAME already registered"
fi
