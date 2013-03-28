#!/usr/bin/python
"""
program to configure which version of free pascal to run next.
"""
import os, sys

menu = {
  'custom': { 'fpc' : '~/f/bin/compiler/ppcx64',
              'fp'  : '~/f/bin/compiler/ide/fp', },
  'system': { 'fpc' : '/usr/bin/fpc',
              'fp'  : '/usr/bin/fp', },
  'typhon': { 'fpc' : '/usr/lib/codetyphon/fpc/bin/x86_64-linux/fpc',
              'fp'  : '/usr/lib/codetyphon/fpc/bin/x86_64-linux/fp' },
}

# set the ~/bin/* symlinks based on the above paths:
if len(sys.argv) == 2 and sys.argv[1] in menu:
    choice = sys.argv[1]
    for app in [ 'fpc', 'fp' ]:
        symlink = os.sep.join(['~', 'bin', app])
        os.system('rm -f ' + symlink)
        os.system('ln -s {0} {1}'.format(menu[choice][app], symlink))
else: print "usage : setfpc.py (%s)" % '|'.join(menu.keys())
