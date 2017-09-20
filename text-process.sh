# cat
# -A to print all characters
# -n add line number
# -s remove extra blank lines


# sort
# -b ignore leading blanks
# -f ignore cases
# -r reverse
# -k sort by field
# -t use delimiter
# -n numeric sort
ls -l /usr/bin|sort -nk 5 |head
# sort by multiple field
ls -l|sort --key=1,1 --key=5n

# uniq -- delete duplicated rows
# sort -u
# -d only output duplicated lines
# -i ignore cases

# cut delete part of the text
# -f field list
# -c characters cut -c 7-11
# -d specify delimiter
# --complement extract the rest
ls -li|cut -c 1-5 --complement|cut -d ' ' -f 5

# paste column bind two files

# join 

# comm


