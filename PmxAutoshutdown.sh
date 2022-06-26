#!/bin/bash

sleep 180
STATUS=$(qm list | awk '/running/{print $3}' | head -n 1)

while [ ! -z $STATUS ]
do
  STATUS=$(qm list | awk '/running/{print $3}' | head -n 1)
  sleep 60
done

shutdown now