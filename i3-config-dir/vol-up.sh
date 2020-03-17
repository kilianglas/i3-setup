#!/bin/bash

SINKS=$(pactl list | grep "Karte #.$" | cut -d "#" -f2)  

for i in ${SINKS[@]} 
do 
	pactl set-sink-volume $i +5%
done
