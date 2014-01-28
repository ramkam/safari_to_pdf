#!/bin/bash

# Waits for the url to be dropped
# then saves it as pdf

# Last time we used the script, it was pointing there
pdfdir=/Users/RK/Dropbox/Safari\ To\ Pdf 

# Provisionning for a user space that will not be uploaded to git
# usefull for url lists ... for example ...
mkdir -p userdata


echo "The url ?"
read url
if [ ! -z "$url" ]; then
	osascript openurl_reader_savepdf.txt.scpt "$url"
fi
ls -Flah "$pdfdir"
