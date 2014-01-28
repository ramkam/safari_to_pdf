safari_to_pdf
=============

applescripts to print as pdf from safari

Frontmost window (does not close it)
<pre><code>$ osascript frontmost_reader_savepdf.scpt</code></pre>

From Url as argument (opens new window then closes it)
<pre><code>$ osascript openurl_reader_savepdf.txt.scpt "http://example.com"</code></pre>

Does not overwrite (if file exists, escapes twice)

Bugs sometime :

 * The name is not collected in the save dialog => no save
 * Safari crashes (long document)=> sometimes it saves
 
Files in 2 formats : 

 * .scpt	-> applescript editor puts binary garbage
 * .txt.scpt -> copy paste to clean trackable test
 
 