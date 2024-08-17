
======================================================

AWK

======================================================

awk is used to filter a manipulate output form other programs 
	and functions 

for instance you can pipe the output of 'who' to show only the 
	first feild 
	*awk considers a feild to be a string seperate by whitespace

$ who | awk '{print $1}'

	will print only the users 

you can print as many feilds as you like, if you seperate with a comma
	awk will put a space.

$ who | awk '{print $1,$4}'

		Identifiers

	$0 - represents the entire line of text 
	$1 - represents the first feild 
	$2 - represents the second feild 
	$NF  repersents the last feild 

		* even in wrapped text the feilds continue the count 

$ awk '{print $7,$10,$NF}' amigay.txt

Adding output feild seerators to awk output

$ date | awk '{print $2,$3,$6}' 

Use the OFS varible to put a seperator between the outputs 

$ date | awk 'OFS="/" {print$2,$3,$6}'

  Aug/5/2024

=====================================
BEGIN and END
=====================================

to add text to the begining 

awk 'BEGIN {print " is you gay? "} {print $0}' amigay.txt

pipe it with who to see active sessions 

who | awk 'BEGIN {print "active sessions"} {print $1,$4}'

+===================================
Input Feild Seperators 
====================================

Use the -F option to tell awk to use a different seperator

$ awk -F: '{print $1,$6}' /etc/passwd

	output contains the name of the user account 
	and the home folder

Adding paterns to awk

$ awk -F: '$3 >= 1000 {print $1,$6}' /etc/passwd

	will only if print the third feild has a value of 1000 or more

add a begining to it! 

$ awk -F: 'BEGIN {print "user accounts\n--------------"} $3 >= 1000 {print $1,$6}' /etc/passwd


Maybe you would like to print the UUIDS of the mounted file system

use the search pattern  "/THING/"

$ awk '/UUID/ {print $0}' /etc/fstab

	prints the lines that UUID occurs on 

However to only print the lines that UUID is first on 

$ awk '/^UUID/ {print $0}' /etc/fstab

Restrict to the first feild

$ awk '/^UUID/ {print $1}' /etc/fstab
