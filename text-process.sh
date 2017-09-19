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


