#!/usr/bin/python
"""
program to check/enforce my config
"""
import os

# ~/ver directory, and symlink shortcuts
# ghs=github ssh, gh: github http
VER = [
    ('b',   ':ghs:sabren/b4'),
    ('m',   ':ghs:minneron/minneron'),
    ('f',   ':gh:graemeg/freepascal'),
    ('o',   ':ghs:sabren/cg-michal'),
    ('l',   ':ghs:tangentstorm/tangentlabs'),
    ('n',   ':ghs:nickelsworth/noct'),
    ('s',   ':ghs:tangentstorm/silverware'),
    ('x',   ':ghs:tangentstorm/xpl'),
    ('t',   ':ghs:tangentstorm/tangentconf'),
    ('r',   ':ghs:sabren/reconciled'),
]

LINKS = [
    (".bash_profile", "bash/bash_profile"),
    (".bashrc",       "bash/bashrc"),
    (".tmux.conf",    "tmux/tmux.conf"),
    (".gitconfig",    "git/_gitconfig"),
    (".gitignore",    "git/_gitignore"),
    (".emacs.el",     "emacs/emacs.el"),
]


HOME = os.environ["HOME"]
EMAIL = ''.join(reversed('moc.liamg@ecallaw.lahcim'))

## generic helper routines #####################################

expand = os.path.expanduser
exists = lambda path: os.path.exists(expand(path))
mkdir  = lambda path, mode=0o777: os.mkdir(expand(path), mode)
stat   = lambda path: os.stat(expand(path))
chmod  = lambda path, mode: os.chmod(expand(path), mode)
chdir  = lambda path: os.chdir(expand(path))
realpath = lambda path: os.path.realpath(expand(path))
rm     = lambda path: os.unlink(expand(path))

def ensure_dir(path, mode=0o755):
    """ensure directory exists"""
    if not exists(path):
        mkdir(path)
    cmode = stat(path).st_mode
    if cmode & mode != cmode:
        chmod(path, mode)


def confirm(prompt, default="Y"):
    yn = ''
    while yn not in ("Y", "N"):
        yn = raw_input(prompt + " [Y/n]:").upper() or default
    return yn == "Y"


def ensure_symlink(link_path, to_path):
    assert exists(to_path)
    if exists(link_path):
        if realpath(link_path) == expand(to_path): pass
        else:
            print("warning: \n%s exists, \n but points to: %s\n rather than: %s" %
                   (link_path, realpath(link_path), to_path))
            if confirm("delete this and link to %s instead?" % to_path):
                rm(link_path)
                ensure_symlink(link_path, to_path) # recurse to try again
    else:
        print("add symlink: %s -> %s" %(link_path, to_path))
        os.symlink(expand(to_path), expand(link_path))



## helpers specific to my config ###############################

def ensure_ssh_key():
    ensure_dir("~/.ssh", 0o700)
    if not exists("~/.ssh/id_ed25519.pub"):
        os.system('ssh-keygen -t ed25519 -C "%s"' % EMAIL)
        print("added new ssh key. you should add this to github and then try again:")
        print("https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/")
        raise SystemExit


def check_self():
    """check that *this* repo is set up correctly"""
    goal = "~/ver/tangentconf/tangentconf.py"
    if realpath(__file__) != expand(goal):
        print("This file should be stored as:", goal)
        print("To create the file properly:")
        print("cd; mkdir ver; cd ver; git clone https://github.com/tangentstorm/tangentconf/")
        raise SystemExit
    else:
        here = os.path.dirname(realpath(__file__))

        # set up all the symlinks to these files:
        for (sym, path) in LINKS:
            ensure_symlink(os.path.join("~", sym), os.path.join(here, path))

        # force this to use the github ssh url now that we have ssh set up
        os.system("git remote set-url origin git@github.com:/tangentstorm/tangentconf.git")


def check_other_repos():
    """check that the git repos are checked out and have the symlinks setup"""
    for sym, repo in VER:

        chdir("~/ver")

        # first check that the actual path is there:
        name = repo.split("/")[-1]
        if not exists(name):
            if ":ghs:" in repo:
                os.system("git clone %s" % repo.replace(":ghs:", "git@github.com:/"))
            elif ":gh:" in repo:
                os.system("git clone %s" % repo.replace(":gh:", "https://github.com/"))
            else:
                os.system("git clone %s" % repo)


        # if that worked, then run `git status` and check the symlink:
        if exists(name):
            ensure_symlink(("~/%s" % sym), ("~/ver/%s" % name))
            os.chdir(name)
            print("--- git status (", name, ") ----")
            data = os.popen("git status --porcelain").read()
            if data: print(data)


def check_config():
    ensure_ssh_key()
    check_self()
    check_other_repos()


if __name__=="__main__":
    check_config()
