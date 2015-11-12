#!/usr/bin/python

# Script for using Meld as diff tool with git
# Git passes in 5 params to the diff tool, Meld only uses two
# Usage: git config --global diff.external "python ~/scripts/gitmelddiff.py"

import os
import sys

os.system('meld "%s" "%s"' % (sys.argv[2], sys.argv[5]))
