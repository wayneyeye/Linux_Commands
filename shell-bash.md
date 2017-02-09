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
```

