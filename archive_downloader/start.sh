#!/bin/bash
# [LINK] [CRYPTO]
DOWNLOADLINK="$1"
IFS="/"
read -ra ADDR <<< "$1"
HOST=${ADDR[2]}
FILENAME=${ADDR[5]}
unset IFS

# ./dowloader.sh [LINK] [HOST] [CRYPTO]
sh ./downloader.sh  $DOWNLOADLINK $HOST $2 $FILENAME

ls -la ../../downloads/$2
rm -rf ../../downloads/$2
