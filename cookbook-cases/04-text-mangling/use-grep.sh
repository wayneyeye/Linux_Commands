# grep pattern file name
grep 15/Jul/2010:23:42 ../../raw_text/access_log --color=auto #highlight matched text
# grep from stdin
echo -e "this is a word \nnext line"|grep word
# grep using extended regular expression (egrep)
head ../../raw_text/access_log | grep -E "\/.*\/" -o --color=auto # output the matched portion only
head ../../raw_text/access_log | grep -vE "\/assets\/" --color=auto # reverse match

# count the NUMBER OF LINES the pattern matches
grep -c "assets" ../../raw_text/access_log

# count the NUMBER OF MATCHEDS
head ../../raw_text/access_log | grep -o "20" |wc -l 

# print the line number 
head ../../raw_text/access_log | grep -n "20" --color=auto
