#! /usr/bin/python

import sys
import os

def main():
	license = str(sys.argv[1])
	location = str(sys.argv[2])
	if license == '3' :
		os.system("python /usr/bin/src/mit.py " + location)
	elif license == '4' :
		os.system("python /usr/bin/src/art.py " + location)
	elif license == '6' :
		os.system("python /usr/bin/src/isc.py " + location)
	elif license == '9' :
		os.system("python /usr/bin/src/nol.py " + location)
	else:
		os.system("python /usr/bin/src/others.py " + license + " " + location)

if __name__ == '__main__':
	main()
