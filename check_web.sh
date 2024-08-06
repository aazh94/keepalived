#!/bin/bash

if [ ! -f /var/www/html/index.html ]; then
    exit 1
fi

nc -z localhost 80
if [ $? -ne 0 ]; then
    exit 1
fi

exit 0
