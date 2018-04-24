# supply arguments to a command by reformatting the data received thru stdin
# space is the default delimiter
# \n is converted to space by default
cat cmd.txt|xargs -n 2 # format as two args per line
touch file{1..3}
cat cmd.txt|xargs -n 2 cp

#increase safety by using -print0
