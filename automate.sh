#!/bin/bash

# Waits for the url to be dropped
# then saves it as pdf

# Last time we used the script, it was pointing there
pdfdir=/Users/RK/Dropbox/Safari\ To\ Pdf 

echo "The url ?"
read url
osascript openurl_reader_savepdf.txt.scpt "$url"

