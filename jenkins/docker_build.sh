#!/bin/bash

echo `git show --format="%h" HEAD | head -1` > hash_info.txt
echo `git rev-parse --abbrev-ref HEAD` >> build_info.txt



docker build -t alexpotapov87/jenkins_ta:$HASH .