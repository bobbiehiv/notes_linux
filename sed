
=======================================================
Sed
======================================================

SED stands for stream editor and it can search, find, replace, 
insertion and deletion. 

syntax:

$ sed OPTIONS [SCRIPT] [INPUTFILE]

$ cat > amitall.txt

  Help, my name is bobbie and i am not tall

  instead im just stupid and not tall

--- the pasted text from amitall.txt

with sed you are able to replace or substitue strings

$ sed 's/tall/straight/' amitall.txt

  Help, my name is bobbie and i am not straight

  instead im just stupid and not straight

--- the s specifies the substitue operation and the / is 
	the delimiter. 
	*you can use other things such as spaces or periods 
			as delimeters 

$ sed 's/tall/straight/2' amitall.txt

	add a number to the end of the string to change that 
	occurance in the output (the above would replace the 
	second occurance of tall with straight)

	use the /g flag to replace globally in the file
	use /3g (or any#) to replace the thrid then every other one 

Parenthesize the first letter of every string 

$ echo "Where you going Gay Boy!" | sed 's/\(\b[A-Z]\)/\(\1\)/g'

Replacing string on a specific line number 

$ sed 'sed s/tall/straight/' amitall.txt

	use the /p flag to duplicate the replaced line 

$ sed 's/tall/straight/p' amitall.txt

	Print only the replaced lines use -n

$ sed -n 's/tall/straight/p' amitall.txt

replacing the strign on a range of lines

$ sed '1,3 s/tall/straight/' amitall.txt

	use $ to do multiple lines 

$ sed '2,$ s/tall/straight/' amitall.txt

============================
Deleting
============================

delete any line below is the fith line 

$ sed '5d' amitall.txt

Delete the last line 

$ sed '$d' amitall.txt

Delete a range 

$ sed '3,6d' amitall.txt

Delte a line to the last line 

$ sed '12,$d' amitall.txt

Delete a pattern matching line 

$ sed '/tall/d' amitall.txt


	
