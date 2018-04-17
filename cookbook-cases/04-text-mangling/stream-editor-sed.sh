# use sed to replace pattern(s) in a file
ls -l | sed 's/pi/wayne/g' # s for substitute, g for global find and replace

# replace using regex
ls -l | sed 's/\s\+/\t/g' #notice the \ before special chars

# removing blank lines
echo -e "this is the first line\nthis is the second line\n\nthis is the fourth line" |sed '/^$/d' 

# edit and replace file inplace by adding -i
