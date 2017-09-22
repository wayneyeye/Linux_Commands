## Basics for Linux Shell and Bash
### Vi, Vim

#### Basic mode

**ctrl + f** = pagedown

**ctrl + d** = pagedown half

**ctrl + b** = pageup

**ctrl + u** = pageup half

**G** = move to the last line

**/[word]** = find next [word]

**?[word]** = find previous [word]

**n** = find next

**N** = find previous

**dd** = remove the whole line

**x** = equivalent to backspace

**X** = equivalent to delete

**u** = redo

**ctrl + r** = reset redo

**.** = equivalent to ctrl + r

**yy** = yank(copy) the current line

**[number]yy** = yank(copy) the next [number] line

**p** = paste right behind the current line

**P** = paste right before the current line

#### Editing mode

**r,R** = switch to replace mode

#### Command mode

**:set nu** = display line numbers

**:set nonu** = cancel line numbers

#### Visual mode
**v** = switch to visual mode (visual block)

**y** = yank the selection

**d** = delete the selection

**p** = paste the clipboard

#### Multi-file&window mode

**- Multi-file mode**

**vim [file1] [file2]**

**:files** = check files

**:n** = go to the next file

**:N** = go to the previous file

**- Multi-window mode**

**:sp [filename]** = spilit window [to open filename]

**ctrl + w** = switch between windows










#navigation
h,j,k,l
#insert right after the cursor: a
this is a line:
#insert between two lines
o
O
#toggle line number
:set number

#go to line
1G

#merge two lines J
line 1 line 2 line 3

#search the entire file
:/word

#search and replace global
:%s/word/line/g

#edit multiple files
vim file1 file2 file3
:n and :N to switch between files
:buffers to view all buffered files
:buffer n to select certain file

#import from another file
:r filename









