
    WAP that takes a filename as input and checks if it is executable, if not make it executable.

echo “Enter your file name”
read a
if [ ! –e $a ]
then
echo “file not exist”
elif [ ! –x $a ]
then
echo “file is executable”
else
echo “we made it executable”
chmod 777 $a
fi
