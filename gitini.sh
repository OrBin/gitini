sudo -v 

CHOICE1="1"
CHOICE2="2"
CHOICE3="3"

location=$(pwd)
echo "SELECT LICENSE \n"
echo "1.  Apache License 2.0\n"
echo "2.  GNU General Public License v2.0\n"
echo "3.  MIT License\n"
echo "4.  Artistic License 2.0\n"
echo "5.  Eclipse Public License 1.0\n"
echo "6.  ISC License\n"
echo "7.  GNU Lesser General Public License v2.1\n"
echo "8.  Mozilla Public License 2.0\n"
echo "9.  No License\n"
echo "10. The Unlicense\nEnter : "
read license

python /usr/bin/src/add-license.py $license $location


echo "LICENSE ADDED !\n"

touch .gitignore
touch README.md
touch CONTRIBUTE.md

echo "Added (1).gitignore, (2)README.md and (3)CONTRIBUTE.md !. Press (1,2,3) to edit . (4) to Exit ."
read edit_choice

if [ "$edit_choice" == "$CHOICE1" ]; then
	vim .gitignore
elif [ "$edit_choice" == "$CHOICE2" ]; then
	vim README.md
elif [ "$edit_choice" == "$CHOICE3" ]; then
	vim CONTRIBUTE.md
else
	exit 0
fi
exit 0



