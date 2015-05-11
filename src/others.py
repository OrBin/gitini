#! /usr/bin/bash

import sys
import os
import shutil

license = str(sys.argv[1])
location = str(sys.argv[2])

if license == "1":
	shutil.copy("/usr/bin/licenses/apache.md",location)
	os.rename(location+"/apache.md",location+"/LICENSE.md")
elif license == "2":
	shutil.copy("/usr/bin/licenses/gnugpl.md",location)
	os.rename(location+"/gnugpl.md",location+"/LICENSE.md")
elif license == "5":
	shutil.copy("/usr/bin/licenses/epl.md",location)
	os.rename(location+"/epl.md",location+"/LICENSE.md")
elif license == "7":
	shutil.copy("/usr/bin/licenses/gnulgpl.md",location)
	os.rename(location+"/gnulgpl.md",location+"/LICENSE.md")
elif license == "8":
	shutil.copy("/usr/bin/licenses/mpl.md",location)
	os.rename(location+"/mpl.md",location+"/LICENSE.md")
else:
	shutil.copy("/usr/bin/licenses/unl.md",location)
	os.rename(location+"/unl.md",location+"/LICENSE.md")