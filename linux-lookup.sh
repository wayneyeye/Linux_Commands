#locate
#locate issues command to a db, sometimes may not return up-to-date information
locate bin/zip
locate zip |grep bin

#find
find ~ -type f  #file
find ~ -type d  #directory
#find with different arguments
find -name "*.JPG"  -size +1M 
#find with complex logical conditions
find ~ \( -type f -not -perm 0600 \) -or \( -type d -not -perm 0700\)
#find with action!
#-delete -ls -print -quit -exec shell_cmd '{}' ';'
#action with prompt 
#-ok shell_comd '{}' ';'


#use of xargs to redirect arguments : the difference with previous is it passes the arguments within one command
find ~ -type f -name 'foo*' -print | xargs ls -l
find ~ -type f -name 'foo*' -exec ls -l '{}' +
#when dealing with filenames contains spaces
# -print0 use \0 as separator --null takes \0 as separator
find ~ -type f -name 'foo*' -print0 | xargs --null ls -l


