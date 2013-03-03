#!/usr/bin/python
"""
program to check my config
"""
import os
# ~/ver directory, and symlink shortcuts
ver = [
    ('b',   'b4'),
    ('m',   'minneron'),
    ('f',   'freepascal'),
    ('o',   'org'),
    ('l',   'tangentlabs'),
    ('n',   'noct'),
    ('s',   'silverware'),
    ('x',   'xpl'),
    ('t',   'tangentconf'),
    ('r',   'reconciled'),
    ('vrx', 'retro'),
]

HOME = os.environ["HOME"]

def check_repos():
    for sym, name in ver:
        want = "%s/%s" % (HOME, sym)
        if os.path.exists(want):
            os.chdir(want)
            data = os.popen("git status --porcelain").read()
            if data:
                print "---", want, "----"
                print data
        else:
            print "missing", want, "->", name


if __name__=="__main__":
    check_repos()
