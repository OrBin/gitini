#! /usr/bin/bash

import sys
import shutil

license = str(sys.argv[1])
location = str(sys.argv[2])

if license == "1":
	shutil.copy("/usr/bin/licenses/apache.md",location)
elif license == "2":
	shutil.copy("/usr/bin/licenses/gnugpl.md",location)
elif license == "5":
	shutil.copy("/usr/bin/licenses/epl.md",location)
elif license == "7":
	shutil.copy("/usr/bin/licenses/gnulgpl.md",location)
elif license == "8":
	shutil.copy("/usr/bin/licenses/mpl.md",location)
else:
	shutil.copy("/usr/bin/licenses/unl.md",location)