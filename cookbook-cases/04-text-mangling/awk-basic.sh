# FORMAT
# awk ' BEGIN {print "start"} pattern {commands} END {print "end"} '
awk ' BEGIN { i=0 } {i++} {commands} END {print i} ' access_log # automatically iterates thru every line

# print diagnostic info
awk '{print "Line No: " NR " Number of Fields: " NF }' access_log 
awk 'END {print NR}' access_log #to get the total number of lines

# cut specified fields
awk '{print $1 " " $2 }' access_log > /dev/null 

# do summation using awk
seq 10 | awk 'BEGIN {sum=0} {sum+=$1} END{print "Total: " sum}'

# awk with filter patterns
awk 'NR < 5' access_log # first 4 lines
awk '/favicon/' access_log #find regex

# set delimiter
awk -F: '{print $1 " " $2}' access_log


