#! /usr/bin/python

import sys
import os
import shutil
import configfile
import datetime from datetime

location = str(sys.argv[1])
pathf = location + "/LICENSE.txt"
os.system("touch "+pathf)
shutil.copyfile("/usr/bin/licenses/isc.txt",pathf)

fullname = str(configfile.name)
year = str(datetime.now().year)
email = str(configfile.email)

with open(pathf, 'r') as file:
    data = file.readlines()

data[1] =  "[ " + year + " ]" + "  " + "[ " + fullname + " ]" + "  " + "< " + email + " >" + '\n'

with open(pathf, 'w') as file:
    file.writelines( data )

(root,ext) = os.path.splitext(pathf)
os.rename(root + ".txt", root + ".md")