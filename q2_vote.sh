#!/bin/bash

get_person_details () {
    echo "Enter name of person $1: "
    read name
    echo "Enter age of person $1: "
    read age
    echo "Enter city of person $1: "
    read city
    echo "Enter E to English or F to Frensh $1: "
    read lang
    echo "$name,$age,$city,$lang" >> persons.txt
}

check_voting_eligibility () {
	name=$(echo $1 | awk -F',' '{print $1'})
	age=$(echo $1 | awk -F',' '{print $2'})
    if [[ $name == "John" ]] && [[ $city == "Montreal" ]] && [[ $lang == "F" ]]; then
    	echo "John is eligible to vote in Montreal as he can speak French."
    
    elif [[ $age -lt 18 ]]; then
        echo "$name is not eligible to cast the vote."
    elif [[ $age -ge 18 ]] && [[ $age -lt 21 ]]; then
        echo "$name is Ready to register for vote."
    elif [[ $age -gt 21 ]]; then
    	echo "$name can Register and cast the vote."
    
    else
        echo "Error!"
    fi
}
###functions aboce ####
echo "Do you want to delete all old information? Y[es] or N[o]"
read del_old
if [[ "$del_old" == "Y" ]]; then
	rm persons.txt q2_output.txt
fi

for i in {1..3}
	do
		get_person_details $i
	done

while read line
do
	check_voting_eligibility "$line"
done < persons.txt > q2_output.txt

cat q2_output.txt


