# compress using gz
tar -zcv -f test_tar.tar.gz *.md
# lookup compressed file
tar -ztv -f test_tar.tar.gz 
# decompress file
tar -zxv -f test_tar.tar.gz  -C test_tar_dest/