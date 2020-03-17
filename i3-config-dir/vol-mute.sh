#!/bin/bash

SINKS=$(pactl list | grep "Karte #.$" | cut -d "#" -f2)

for i in ${SINKS[@]}
do
	pactl set-sink-mute $i toggle
done
