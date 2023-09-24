Redirection of Pipes


1. Create a file name error_log in your current directory. Suppose you do not have any file named aa11 in your current directory. 
   How  can you redirect the error message to the file error_log when we apply the command "wc -l aa11" ?  
   How can you ensure that all the error log are appended to the error_log file?

Ans: 
┌──(kali㉿kali)-[~]
└─$ touch error_log.txt
┌──(kali㉿kali)-[~]
└─$ wc -l aa11 2> error_log.txt 
┌──(kali㉿kali)-[~]
└─$ cat error_log.txt 
wc: aa11: No such file or directory
┌──(kali㉿kali)-[~]
└─$ cat aa11 2>> error_log.txt 
┌──(kali㉿kali)-[~]
└─$ cat error_log.txt         
wc: aa11: No such file or directory
cat: aa11: No such file or directory


2. Create  files named test1, test2, testa, testb
How can you count the number of  files starting with test and then having only one digit in their name using only a single line command ?

Ans: 

┌──(kali㉿kali)-[~]
└─$ touch test1 test2 testa testb
┌──(kali㉿kali)-[~]
└─$ ls test[0-9] | wc -l
2