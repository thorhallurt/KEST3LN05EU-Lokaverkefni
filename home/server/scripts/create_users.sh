#!/bin/bash
CSV_FILE=/home/server/UTF8_Linux_Users.csv

declare -a full_name
declare -a user
declare -a dept
declare -a emp_id

while IFS=, read -r Name FirstName LastName Username Email Department EmployeeID;
do
	full_name+=("$Name")
	user+=("$Username")
	dept+=("$Department")
	emp_id+=("$EmployeeID")
done<$CSV_FILE

for index in "${!user[@]}";
do
	sudo useradd \
	       	--comment "${full_name[$index]}" \
	       	--groups "${dept[$index]}" \
	       	--shell "/bin/bash" \
	       	--create-home \
	       	"${user[$index]}"
done
