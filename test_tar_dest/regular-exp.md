## Regular Expressions for Linux

#### grep (advanced)
```
grep 
-a read binary file
-c count match numbers
-i ignore caps
-n line number
-v reverse output (find no match)
--color=auto highlight matches

-A number display trailing n lines
-B number display leading n lines
```

#### regular expression special characters

**They are used within [] !!!**
- [:alnum:]   
- [:alpha:]
- [:blank:]   tab and space
- [:cntrl:]   CR LF Tab Del ...
- [:digit:]  
- [:graph:]   reverse of [:blank:]
- [:lower:]   lower case letters
- [:print:]   
- [:punct:]   ,.!@#$% ...
- [:upper:]   upper case letters
- [:space:]   
- [:xditgit:]

#### grep cases
```
grep -n --color=auto 'the' regular_express.txt   #fetch lines with 'the'
grep -vn --color=auto 'the' regular_express.txt  #reverse results
grep -ni --color=auto 'the' regular_express.txt   #ignore cases
grep -n --color=auto 't[ae]st' regular_express.txt  # [] means one char only
grep -n --color=auto '[^g]oo' regular_express.txt   #fetch lines with oo not leaded by g
grep -n --color=auto '[[:digit:]]' regular_express.txt #[]!!!!!
grep -n --color=auto '^the' regular_express.txt  #start of line
grep -n --color=auto '\.$' regular_express.txt  #\ to escape $ means end of line
grep -n --color=auto '^$' regular_express.txt   #fetch blank lines
grep -n --color=auto 'o\{2\}' regular_express.txt   #need to escape { and } in linux shell
```

#### sed (stream editor)
```
sed [-nefr] operations [file]
-n quiet mode (only display changed rows)
-f filename  read operations from filename
-r extended regex support
-i write file directly !!!
```

#### sed operations
```
[n1[,n2]] function



function:
$: last line
a: append(after)
c: replace n1 to n2 to
d: delete

sed '/old/d'

i: insert(before)
p: print 
s: replace using regex

sed 's/old/new/g' #replace
```


