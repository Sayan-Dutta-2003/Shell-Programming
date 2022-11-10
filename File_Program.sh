#Write a shell script program to count the number of characters, words and number of lines from a file.

echo "Enter a filename"
read myfile
ch=`cat $myfile | wc -c`
wd=`cat $myfile | wc -w`
l=`grep -c "." $myfile`
echo $ch
echo $wd
echo $l

#Creation of file and writing contents

second@cslab311-H310M-H:~/Desktop$ vim fileProgram.sh
second@cslab311-H310M-H:~/Desktop$ touch myfile
second@cslab311-H310M-H:~/Desktop$ cat myfile
second@cslab311-H310M-H:~/Desktop$ cat > myfile
sayan dutta
subhradip sarkar
^Z
[1]+  Stopped                 cat > myfile
