#!/bin/bash

type=$1
power=$2
frequency=$3

if [[ "$type" == "cpu" ]]; then
	if [[ "$power" == "low" ]]; then
    	echo "cpu power profile low selected"
    	sudo cpupower frequency-set -u 1000MHZ
	elif [[ "$power" == "high" ]]; then
    	echo "cpu high power profile selected"
    	sudo cpupower frequency-set -u 3300MHZ
	elif [[ "$power" == "manual" ]]; then
    	echo "manually setting cpu frequency to $frequency MHZ"
    	sudo cpupower frequency-set -u ${frequency}MHZ
	elif [[ "$power" == "min" ]]; then
		echo "setting min cpu frequency to $frequency MHZ"
		sudo cpupower frequency-set -d ${frequency}MHZ
	else
    	echo "invalid input for script."
	fi
elif [[ "$type" == "gpu" ]]; then
	if [[ "$power" == "low" ]]; then
    	echo "gpu power profile low selected"
    	echo 200 | sudo tee /sys/class/drm/card1/gt_boost_freq_mhz
		echo 200 | sudo tee /sys/class/drm/card1/gt_max_freq_mhz
	elif [[ "$power" == "high" ]]; then
    	echo "gpu high power profile selected"
    	echo 1250 | sudo tee /sys/class/drm/card1/gt_boost_freq_mhz
    	echo 400 | sudo tee /sys/class/drm/card1/gt_max_freq_mhz
	elif [[ "$power" == "manual" ]]; then
    	echo "manually setting gpu frequency to $frequency MHZ"
		echo ${frequency} | sudo tee /sys/class/drm/card1/gt_boost_freq_mhz
		echo ${frequency} | sudo tee /sys/class/drm/card1/gt_max_freq_mhz
	elif [[ "$power" == "min" ]]; then
		echo "setting min gpu frequency to $frequency MHZ"
		echo ${frequency} | sudo tee /sys/class/drm/card1/gt_min_freq_mhz
	else
    	echo "invalid input for script."
	fi	
else 
	echo "big bad"
fi
