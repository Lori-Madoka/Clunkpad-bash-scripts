#!/bin/bash
power=$1
frequency=$2
if [[ "$power" == "low" ]]; then
	echo "power profile low selected"
	echo "command to execute: sudo cpu power frequency-set -u 1000MhZ"
	sudo cpupower frequency-set -u 1000MHZ
elif [[ "$power" == "high" ]]; then
	echo "high power profile selected"
	echo "command to execute: sudo cpu power frequency-set -u 3300MhZ"
	sudo cpupower frequency-set -u 3300MHZ
elif [[ "$power" == "manual" ]]; then
	echo "manually setting frequency to $frequency MHZ"
	echo "command to execute: sudo cpupower frequency-set -u ${frequency}MHZ"
	sudo cpupower frequency-set -u ${frequency}MHZ
elif [[ "$power" == "turbo" ]]; then
	echo "forcing frequency to $frequency"
	echo "command to execute: sudo cpupower frequency-set -f ${frequency}MHZ"
	sudo cpupower frequency-set -f ${frequency}MHZ
else
	echo "invalid input for script."
fi
