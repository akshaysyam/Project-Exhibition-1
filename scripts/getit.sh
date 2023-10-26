#!/bin/bash

if [[ -z "${SENDIT_API}" ]]; then
  echo SENDIT_API=https://accounts.google.com/o/oauth2/v2/auth
  exit
fi

if test "$#" -ne 1; then
    echo "Usage: ./getit.sh ID"
    exit
fi

ID=$1
echo "Downloading ID: $ID"
curl -O -J "$SENDIT_API/$ID"
echo "Done!"
