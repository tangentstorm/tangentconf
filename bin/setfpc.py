#!/usr/bin/python
"""
program to configure which version of free pascal gets run.
"""
import os, sys

if len(sys.argv) == 2 and sys.argv[1] in ['custom', 'system']:
    for app, path in [('fpc', 'compiler/ppcx64'), ('fp', 'ide/fp' )]:
        symlink = os.sep.join(['~', 'bin', app])
        os.system('rm -f ' + symlink)
        if sys.argv[1] == 'custom':
            os.system('ln -s ~/f/{0} {1}'.format(path, symlink))
else: print "usage : setfpc.py (custom|system)"
