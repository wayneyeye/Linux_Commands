# get the specified fields separated by a certain kind of delimiter
cut -f 2,3 -d , ../../raw_text/sample.csv
# get everything except the 3rd column
echo "original"
ls -l
echo "cut off the 1st columnd"
ls -l | cut -f 1 -d " " --complement 

# change delimiter string
ls -l | cut -f 2,3 -d " " --complement --output-delimiter "," # notice the buggy output

# play with a fixed width file
ls -l |cut -c -10,12,14-15  --output-delimiter ", "

