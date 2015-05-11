#gitini
The missing git repository initializer . Utility for automatically adding license and creating other file such as `README.md` , `.gitignore` and `CONTRIBUTE.md` .

##Installation
```
git clone https://github.com/saru95/gitini.git
cd gitini
chmod +x install.sh
./install.sh
Enter Full Name : XYZ
Enter EmailId : xyz@abc.com
```

##Usage
The inspiration for this utility was the typical git initialization workflow .
###Typical Initial Github Deployement :
```
git init
touch README.md
touch LICENSE.md
touch CONTRIBUTE.md
touch .gitignore
git add --all
git remote add origin https://github.com/user/repo.git
git push -u origin master
```
After this you even have to select your preferred license and put it in your `LICENSE.md` file .
`gitini` makes this little simple . Statements to be typed = 8

###With gitini :
git init
gitini
SELECT LICENSE 
1.  Apache License 2.0
2.  GNU General Public License v2.0
3.  MIT License
4.  Artistic License 2.0
5.  Eclipse Public License 1.0
6.  ISC License
7.  GNU Lesser General Public License v2.1
8.  Mozilla Public License 2.0
9.  No License
10. The Unlicense
Enter : 3
LICENSE ADDED !
Added (1).gitignore, (2)README.md and (3)CONTRIBUTE.md !. Press (1,2,3) to edit . (4) to Exit .
4
git add --all
git remote add origin https://github.com/user/repo.git
git push -u origin master
```
Statements to be typed = 5 . Alongwith no License selection issue .

