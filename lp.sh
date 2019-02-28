#!/bin/bash
# list all installed packages and their individual sizes: 
pacman -Qi | awk '/^Name/{name=$3} /^Installed Size/{print $4$5, name}' | sort -h


