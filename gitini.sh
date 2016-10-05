#! /bin/bash

sudo -v 

CHOICE1="1"
CHOICE2="2"
CHOICE3="3"

location=$(pwd)
echo "SELECT LICENSE "
echo
echo "1.  Apache License 2.0"
echo
echo "2.  GNU General Public License v2.0"
echo
echo "3.  MIT License"
echo
echo "4.  Artistic License 2.0"
echo
echo "5.  Eclipse Public License 1.0"
echo
echo "6.  ISC License"
echo
echo "7.  GNU Lesser General Public License v2.1"
echo
echo "8.  Mozilla Public License 2.0"
echo
echo "9.  No License"
echo
echo "10. The Unlicense"
echo
echo "Enter : "
read license

sudo python /usr/bin/gitini/add-license.py $license $location


echo "LICENSE ADDED !"
echo

touch .gitignore
touch README.md
touch CONTRIBUTE.md

echo "Added (1).gitignore, (2)README.md and (3)CONTRIBUTE.md !. Press (1,2,3) to edit . (4) to Exit ."
read edit_choice

if [ "$edit_choice" == "$CHOICE1" ]; then
	vim -c 'startinsert' .gitignore
elif [ "$edit_choice" == "$CHOICE2" ]; then
	vim -c 'startinsert' README.md
elif [ "$edit_choice" == "$CHOICE3" ]; then
	vim -c 'startinsert' CONTRIBUTE.md
else
	exit 0
fi
exit 0



