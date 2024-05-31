#!/bin/bash

timedatectl set-timezone Europe/London
timedatectl set-ntp true
systemctl enable systemd-timesyncd
systemctl restart systemd-timesyncd
