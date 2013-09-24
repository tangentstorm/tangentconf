#!/usr/bin/env python
"""
program to configure which version of free pascal to run next.
"""
import os, sys

platform = "x86_64-freebsd"
menu = {
  'custom': { 'fpc' : '~/f/compiler/ppcx64',
              'fp'  : '~/f/ide/bin/%s/fp' % platform, },
  'system': { 'fpc' : '/usr/local/bin/fpc',
              'fp'  : '/usr/local/bin/fp', },
  'typhon': { 'fpc' : '/usr/lib/codetyphon/fpc/bin/%s/fpc' % platform ,
              'fp'  : '/usr/lib/codetyphon/fpc/bin/%s/fp'  % platform },
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
        else: print "warning: {0} does not exist.".format( realpath )
else: print "usage : setfpc.py (%s)" % '|'.join(menu.keys())
