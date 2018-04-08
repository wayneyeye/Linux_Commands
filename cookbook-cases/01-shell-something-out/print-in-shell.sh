# double quotes
echo "Welcome to Bash"
echo Welcome to Bash!

# this will cause a problem
echo 'Welcome !'

# print with format
printf "%-5s %-4.2f\n" Wenhe 80.43

# escape
echo -e "1\t2\t3"
echo "1\t2\t3"

# setting colors
echo -e "\e[1;31m This is red text \e[0m"
echo -e "\e[1;42m This is green background \e[0m"
echo -e "\e[1;31;42m This is red text on green background \e[0m" # text style;foreground;background
