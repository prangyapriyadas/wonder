#!/bin/sh
echo "Please enter the name of a user:"
read USER
who|grep $USER > /tmp/usertest &
sleep 5
if [ -s /tmp/usertest ]
then echo "User is logged in"
else echo "User is not logged in"
fi
rm /tmp/usertest 
