### Linux Bash Scripts

#### Type (similar to which)

```
type [cmd_name] #to see if a cmd is internal to bash
```


#### echo and variables

```
echo $[varname] 

var1=var2 #assign value between two variables

var1="lang is $LANG" #double quote
echo $var1 # output is lang is en_US

var2='lang is $LANG' #single quote
echo $var2 # output is lang is $LANG

version=$ (uname -r) # quote a command
echo $version #x.x.xxxxxx

var3="$var1":home/bin #extend a variable

unset var1 var2 var3# no $ sign!

export var1 #make var1 globally available to a new shell process
```

#### env and environmental variables
```
env #check all env variables

set #check all env variables + user defined variables

``` 

#### locale
```
locale -a #check all available locale settings

set #check all env variables + user defined variables

``` 

#### read variable thru keyboard input
```
read [-pt] variablename
#-p prompt
#-t timeout
```

#### declare / typeset
```
declare [-aixr] variablename
#-a array
#-i integer
#-x export
#-r readonly
#-p check var type
```

#### array
```
var[1]=small
var[2]=big
echo ${var[1]} ${var[2]} 
```

#### ulimit
```
ulimit -a #check all your system resource limits
```

#### delete / replace the content of a variable
```
path=${PATH}
echo $path
#delete
echo ${path#/*kerberos/bin:} # #delete the shortest match from beginning
echo ${path##/*kerberos/bin:} # #delete the longest match from beginning
echo ${path%/*kerberos/bin:} # #delete the shortest match from end
echo ${path%%/*kerberos/bin:} # #delete the longest match from end

#replace
echo ${path/sbin/SBIN} replace sbin with SBIN
echo ${path//sbin/SBIN} replace ALL sbin with SBIN

#test-replace
username=${username-root} # assign root to username if the latter is not defined
username=${username:-root} # assign root to username if the latter is not defined or empty
```

#### alias / unalias
```
alias lm='ls -l | more'
alias rm='rm -i'

unalias lm
```

#### history
```
history [number]
!n #execute the n th cmd 
```

#### bash login banners
```
/etc/issue
/etc/issue.net
```

#### source .bashrc (non-login shell)
```
source ~/.bashrc # read environmental settings 
```

#### wildcard
```
* 0 to many chars
? only one char
[] one of them
[a-z] alphabet
[^] not in 
```

#### stdin stdout redirect
```
#stdout
find /home -name .bashrc 1>list_right 2>list_error  #1>correct_info  2>error_info
2>dev/null  #black-hole
find /home -name .bashrc &>list_right #write all to one file
#stdin
cat > catfile < ~/.bashrc #use file to replace keyboard input
cat > catfile <<"eof"  #use "eof" to terminate key in process
```

#### ||   &&
```
cmd A && cmd B   #if A returns 0 then execute B 
cmd A || cmd B   #if A does not return 0 then execute B
cmd 1 && cmd 2 || cmd 3 # important logic
```

#### cut
```
cut 
-d 'delimiter'
-f fetch 
-c after nth char (for each line)

export | cut -c 12-
echo $PATH | cut -d ':' -f 5
```

#### grep (get matched lines)
```
grep 
-a read binary file
-c count match numbers
-i ignore caps
-n line number
-v reverse output (find no match)
--color=auto highlight matches
```

#### sort
```
sort
-f ignore cases
-b ignore leading blanks
-M by month name (JAN DEC ...)
-n by numeric
-r reverse order
-u dedupe
-t delimiter default is tab
-k by which column used with -t
```

#### wc (word count)
```
wc
-l lines
-w english words
-m characters
```

#### tee (T shape redirect)
```
tee (make a copy of the stdout flow to device and continue the pipeline)
-a append (similar to >>)
```
#### tr
```
tr
-d delete keyword
-s substitue

last | tr '[a-z]' '[A-Z]' # to uppercase
```

#### dos2UNIX, UNIX2dos
```
UNIX2dos #remove ^M
dos2UNIX #replace CRLF with ^M
file filename #check text file properties
```

#### join (join matched records into one line)
```
join [-ti12] file 1 file2
-t delimiter default: tab
-i ignore cases
-1 file1's col number
-2 file2's col number
```

#### paste (combine rows in multiple files)
```
paste [-d-]
-d delimiter
-- stdin (can use stdin as one source)
```

#### expand (convert tabs to spaces)
```
-t number of characters apart (default 1 tab= 8 char)

```

#### split
```
split [-bl] file PREFIX 
-b divide into files by size
-l divide into files by lines
PREFIX prefix of new files
```

#### xargs
```
xargs [-epn] command  #useful when no pipeline supported
-e eof string
-p prompt mode
-n number of args piped each time
```

#### printf
```
printf 'format' content #printf does not support pipeline stdin
printf '%s\t %s\t %10s\t %5i\t %8.2f\t \n' $(cat printf.txt)
%ns  #string
%ni  #integer
%N.nf  #float
```

#### awk
```
#column select
awk 'BEGIN {FS=":"} $3 < 10 {print $1 "\t" $3}'
FS  #delimiter

#calculation
awk 'NR==1{printf "%10s %10s %10s %10s\n", $1, $2, "Total"}
NR>=2{total=$2+$3;printf "%10s %10d %10d %10d %10.2f\n",$1, $2, total}'

```

#### test (information queries in linux)
```
test -options filename
-e exist?
-f file?
-d dir?
-z string if null?
-a and
-o or
! not

#alternative using info query
[ -z "$HOME" ] same as test -z $HOME need space in [  ]!!!
```
