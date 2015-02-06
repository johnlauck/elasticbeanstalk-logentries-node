#!/bin/bash

/usr/bin/le follow /var/log/nodejs/nodejs.log --name=nodejs
/usr/bin/le follow /var/log/nginx/error.log --name=nginx-error
/usr/bin/le follow /var/log/nginx/access.log --name=nginx-access
/usr/bin/le follow /var/log/eb-activity.log --name=eb-activity
/usr/bin/le follow /var/log/eb-version-deployment.log --name=eb-deployment
/usr/bin/le follow /var/log/messages --name=messages
