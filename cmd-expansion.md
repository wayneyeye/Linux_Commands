# numerical calculation expansion
```
echo $(($((1+1))**4))
echo $((2#111111)) display in binary
```
# assign value to a variable
```
foo=1
$((foo++))
```
# position operation
```
for ((i=0;i<8;++i)); do echo $((1<<i)); done
```
# use bc to calculate 
```
bc <<< "2+2" # use <<< to send cmds to subshell not the pipeline
```
#{}expansion
```
echo number_{1..10}
echo {Z..A}
echo {A{1,2},B{3,4}}
echo {2009..2011}-0{1..9} {2009..2011}-{10..12}
```
#double and single quotes
```
echo $(which cp)
echo "which cp"
echo "$USER $(which cp)"
echo '$USER $(which cp)' #echo as is use single quotes
#!/bin/bash
a="foo"
echo "${a}_file"
```
# ${parameter:-word}  substitute value if unset
```
echo ${foo:-"substitue value if unset"}
echo ${foo:-1}

```
# ${parameter:=word}   set value if unset else use the set value
```
echo ${foo:="set value if unset"}
echo $foo
unset foo
```
# ${parameter:+word}   if unset no change else replace with word
```
echo ${foo:=bar}
echo ${foo:+"parameter is replaced"}
echo $foo
```

# ${parameter:?word}   report error if unset else replace with word
```
echo ${foo:?"parameter is empty"}
```

# ${!prefix*}
```
echo ${!BASH*} # or
echo ${!prefix@}
```
## string operations

# ${#parameter} length of parameter
```
echo ${#foo}
```
# ${parameter:offset:length} same as subset a string
```
foo="this is a long parameter"
echo $foo
echo ${foo:5}
echo ${foo:5:5}
```
# remove a pattern substring from the begining
# ${parameter#pattern}  --- remove the shortest match for the wildcard match
# ${parameter##pattern}  --- remove the longest match for the wildcard match
```
foo=file.txt.zip
echo ${foo#*.}
echo ${foo##*.}
```
# remove a pattern substring from the end
# ${parameter%pattern}
# ${parameter%%pattern}
```
echo ${foo%.*}
echo ${foo%%.*}
```

#parameter expansion for string search and replacement
#${parameter/pattern/string}  --- replace the first match
#${parameter//pattern/string}  --- replace all matched pattern
#${parameter/#pattern/string}	--- replace from the begining
#${parameter/%pattern/string}	--- replace from the end
