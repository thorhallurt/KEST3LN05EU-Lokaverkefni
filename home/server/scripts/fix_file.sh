#!/bin/bash

CSV_FILE=/home/server/Linux_Users.CSV
OUTPUT_FILE=/home/server/UTF8_Linux_Users.csv

# The CSV file is in UTF-16 we need to convert it to UTF-8

iconv -f UTF-16LE -t UTF-8 $CSV_FILE > $OUTPUT_FILE
