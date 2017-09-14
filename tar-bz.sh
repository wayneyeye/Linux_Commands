# tar = tape archive
# c create tarball, x extract from tarball, t list, r append files to the, v verbose mode
# C change to the directory

# compress using gz
tar -zcv -f test_tar.tar.gz *.md

# lookup compressed file
tar -ztv -f test_tar.tar.gz 

# decompress file
tar -zxv -f test_tar.tar.gz  -C test_tar_dest/

#copy - means a temporary cache in RAM
tar -cvf - /etc | tar -xvf -

#pipeline tar
find filename -name 'file-A' | tar cf - --files-from=- | gzip
#or
find filename -name 'file-A' | tar cf - -T | gzip
#or
find filename -name 'file-A' | tar czf - -T #use gzip
#or
find filename -name 'file-A' | tar cjf - -T #use bzip2


