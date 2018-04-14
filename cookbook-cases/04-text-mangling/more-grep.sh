# recursively search in a dir
grep "line" . -R -n

# ignore cases
grep -iRn "line"

#matching multiple patterns
echo this is a very very long line | grep -e "this" -e "very" --color=auto

# including and excluding files in a grep search
grep "main()" . -r --include *.{c,cpp}
grep "main()" . -r --exclude README

# use grep with xargs with \0 suffix
echo "test" > file1
echo "cool" > file2
echo "test" > file3
echo "files before grep | xargs :"
ls file* -l
echo "files after grep | xargs :"
grep test file* -lZ | xargs -0 rm #l for list filenames only, Z for zero byte suffix
ls file* -l

# grep with silent output, match returns 0 no match returns -1
grep -q cool file*
echo $?
grep -q test file*
echo $?
