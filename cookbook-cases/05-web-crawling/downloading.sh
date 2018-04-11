#!/bin/bash
#download a webpage using wget
wget www.google.com -O tmp_download/google.html
wget www.google.com -O tmp_download/google.html -a tmp_log/log # appending the log to a file
wget --limit-rate 20k www.google.com -O tmp_download/google.html \
-Q 100m -t 5 #limiting the bandwidth shared, quota to use and number of tries
wget www.google.com -O tmp_download/google.html \
	-c # continue downloading
# download a webpage as plain text using lynx
lynx www.google.com -dump > google_as_text.txt
