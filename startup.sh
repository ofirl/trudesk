#!/bin/bash

if [ ! -d /usr/src/app/public/uploads/users ]; then
    echo "Creating Directory..."
    mkdir /usr/src/app/public/uploads/users
fi

if [ ! -f /usr/src/app/public/uploads/users/defaultProfile.jpg ]; then
    echo "Coping defaultProfile.jpg"
    cp /usr/src/app/public/img/defaultProfile.jpg /usr/src/app/public/uploads/users/defaultProfile.jpg
fi

node /usr/src/app/runner.js
