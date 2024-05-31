#!/bin/bash

type=$1
target=$2

if [[ "$type" == "m" ]]; then 
	udisksctl mount -b /dev/${target}

elif [[ "$type" == "d" ]]; then
	udisksctl unmount -b /dev/${target}

else
	echo "invalid"
fi
