#!/usr/bin/python
"""
program to configure which version of free pascal to run next.
"""
import os, sys

menu = {
  'custom': { 'fpc' : '~/f/compiler/ppcx64',
              'fp'  : '~/f/ide/bin/x86_64-linux/fp', },
  'system': { 'fpc' : '/usr/bin/fpc',
              'fp'  : '/usr/bin/fp', },
  'typhon': { 'fpc' : '/usr/lib/codetyphon/fpc/bin/x86_64-linux/fpc',
              'fp'  : '/usr/lib/codetyphon/fpc/bin/x86_64-linux/fp' },
}

# set the ~/bin/* symlinks based on the above paths:
if len(sys.argv) == 2 and sys.argv[1] in menu:
    choice = sys.argv[1]
    for app in [ 'fpc', 'fp' ]:
        realpath = menu[choice][app]
        if os.path.exists(os.path.expanduser(realpath)):
            symlink = os.sep.join(['~', 'bin', app])
            os.system('rm -f ' + symlink)
            os.system('ln -s {0} {1}'.format(realpath, symlink))
        else: print "error: {0} does not exist.".format( realpath )
else: print "usage : setfpc.py (%s)" % '|'.join(menu.keys())
