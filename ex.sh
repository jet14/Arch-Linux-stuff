#!/bin/bash
# list the 20 last installed packages 
expac --timefmt='%Y-%m-%d %T' '%l\t%n' | sort | tail -n 20
