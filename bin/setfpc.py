#!/usr/bin/python
"""
program to configure which version of free pascal gets run.
"""
import os, sys

if len(sys.argv) == 2 and sys.argv[1] in ['custom', 'system']:
    for app, path in [('fpc', 'compiler'), ('fp', 'ide' )]:
        symlink = os.sep.join(['~', 'bin', app])
        os.system('rm -f ' + symlink)
        if sys.argv[1] == 'custom':
            os.system('ln -s ~/f/{0}/{1} {2}'.format(path, app, symlink))
else: print "usage : setfpc.py (custom|system)"
