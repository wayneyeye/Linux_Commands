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

