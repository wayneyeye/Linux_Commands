
## use single quotes to AVOID Evaluating
## use double quotes to Evaluate shell variables

# use sed to replace pattern(s) in a file
ls -l | sed 's/pi/wayne/g' # s for substitute, g for global find and replace

# replace using regex
ls -l | sed 's/\s\+/\t/g' #notice the \ before special chars

# removing blank lines
echo -e "this is the first line\nthis is the second line\n\nthis is the fourth line" |sed '/^$/d' 

# edit and replace file inplace by adding -i.bak
sed -i.bak 's/\b[0-9]\{3\}\b/NUMBER/g' sed_test.txt # use \b to indicate word boundaries 

# string match notation
cat sed_test.txt.bak |sed 's/\b\w\+\b/[&]/g'  # use \b to indicate word boundaries 

# substring match & notation/replace
cat sed_test.txt.bak | sed 's/\([0-9]\)/*\1*/g'  # use \b to indicate word boundaries 
