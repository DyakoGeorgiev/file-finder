The script must search in the provided directory and find the absolute path of
the file with most lines.
Example
./file_finder.sh -dir /root/dir_to_search/
The above script must perform search in /root/dir_to_search/.
Additional requirements:
• The argument is required. If, for some reasons, the argument is missing
an appropriate message must be displayed.
• Directory to search must be existing directory. For simplifications,
assume that in the directory there will be no spaces.
• The result must be persisted in the file called result.txt. The file must
be in the same directory as the executed script. If such file exists, the file
must be overridden by the output of the script.
• For simplifications, assume that all files will be .txt files and there will be
no spaces in their names.
