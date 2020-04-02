#!/bin/bash
# Purpose: Read Comma Separated CSV File
# Author: Francisco Maria Calisto
# ------------------------------------------
cd dataset
INPUT=cities.csv
OLDIFS=$IFS
IFS=','
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 130; }
while read LatD LatM LatS NS LonD LonM LonS EW City State
do
	echo "LatD : $LatD"
	echo "LatM : $LatM"
	echo "LatS : $LatS"
	echo "NS : $NS"
	echo "LonD : $LonD"
	echo "LonM : $LonM"
	echo "LonS : $LonS"
	echo "EW : $EW"
	echo "City : $City"
	echo "State : $State"
done < $INPUT
IFS=$OLDIFS