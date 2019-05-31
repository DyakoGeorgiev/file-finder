<p>The script must search in the provided directory and find the absolute path of
the file with most lines.</p>
<p>Example
./file_finder.sh -dir /root/dir_to_search/</p>

The above script must perform search in /root/dir_to_search/. <br>
Additional requirements:<br>
• The argument is required. If, for some reasons, the argument is missing<br>
an appropriate message must be displayed.<br>
• Directory to search must be existing directory. For simplifications,<br>
assume that in the directory there will be no spaces.<br>
• The result must be persisted in the file called result.txt. The file must<br>
be in the same directory as the executed script. If such file exists, the file<br>
must be overridden by the output of the script.<br>
• For simplifications, assume that all files will be .txt files and there will be<br>
no spaces in their names.<br>
