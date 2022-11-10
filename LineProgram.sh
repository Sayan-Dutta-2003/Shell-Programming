#Write a shell script to print those particular lines containing a particular word

echo "Enter a filename"
read myfile
echo "Enter the word"
read word

l=`grep -i $word $myfile`

echo $l
