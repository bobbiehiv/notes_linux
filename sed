
=======================================================

Sed

======================================================

SED stands for stream editor and it can search, find, replace, 
insertion and deletion. 

syntax:

$ sed OPTIONS [SCRIPT] [INPUTFILE]

$ cat > amigay.txt

  Help, my name is bobbie and i am not gay

  instead im just stupid and not gay

--- the pasted text from amigay.txt

with sed you are able to replace or substitue strings

$ sed 's/gay/straight/' amigay.txt

  Help, my name is bobbie and i am not straight

  instead im just stupid and not straight

--- the s specifies the substitue operation and the / is 
	the delimiter. 
	*you can use other things such as spaces or periods 
			as delimeters 

$ sed 's/gay/straight/2' amigay.txt

	add a number to the end of the string to change that 
	occurance in the output (the above would replace the 
	second occurance of gay with straight)

	use the /g flag to replace globally in the file
	use /3g (or any#) to replace the thrid then every other one 

Parenthesize the first letter of every string 

$ echo "Where you going Gay Boy!" | sed 's/\(\b[A-Z]\)/\(\1\)/g'

Replacing string on a specific line number 

$ sed 'sed s/gay/straight/' amigay.txt

	use the /p flag to duplicate the replaced line 

$ sed 's/gay/straight/p' amigay.txt

	Print only the replaced lines use -n

$ sed -n 's/gay/straight/p' amigay.txt

replacing the strign on a range of lines

$ sed '1,3 s/gay/straight/' amigay.txt

	use $ to do multiple lines 

$ sed '2,$ s/gay/straight/' amigay.txt

============================
Deleting
============================

delete any line below is the fith line 

$ sed '5d' amigay.txt

Delete the last line 

$ sed '$d' amigay.txt

Delete a range 

$ sed '3,6d' amigay.txt

Delte a line to the last line 

$ sed '12,$d' amigay.txt

Delete a pattern matching line 

$ sed '/gay/d' amigay.txt


	
