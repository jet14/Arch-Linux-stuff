#!/bin/bash
expac --timefmt='%Y-%m-%d %T' '%l\t%n' | sort | tail -n 20
