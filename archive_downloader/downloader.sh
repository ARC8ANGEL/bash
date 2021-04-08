#!/bin/bash
# USAGE: sh downloader.sh [download address] [../downloads directory name]

ping -c 1 $2
if [ $? -gt 0 ]
then
	echo "<<< $2 does not ping, aborting >>>"
	exit 1
fi
if [ ! -d "../../downloads/$3" ]
then 
	echo "<<< ../../downloads/$3 does not exist, creating ../downloads/$3 >>>"
	mkdir ../downloads/$3
fi

# unset IFS
curl -o "../../downloads/$3/$4" $1
gunzip "../../downloads/$3/$4"
