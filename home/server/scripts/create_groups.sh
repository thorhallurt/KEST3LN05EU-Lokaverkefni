#!/bin/bash
CSV_FILE=/home/server/UTF8_Linux_Users.csv

declare -a dept

while IFS=, read -r Name FirstName LastName Username Email Department EmployeeID;
do
	dept+=("$Department")
done<$CSV_FILE

for index in "${!dept[@]}";
do
	sudo groupadd "${dept[$index]}" 2> /dev/null &&
		echo "Successfully created group: ${dept[$index]}"
done

# Delete extra group created from line 1
sudo groupdel Depatment
