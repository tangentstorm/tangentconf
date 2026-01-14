#!/usr/bin/env python3
"""
program to check/enforce my config
"""
import os
from taskui import Task, run_tasks

# ~/ver directory, and symlink shortcuts
# ghs=github ssh, gh: github http
# format: (shortcut, repo, default_enabled)
VER = [
    ('b',   ':ghs:tangentstorm/b4',          True),
    ('m',   ':ghs:minneron/minneron',        False),
    ('f',   ':gh:graemeg/freepascal',        False),
    ('o',   ':ghs:sabren/cg-michal',         True),
    ('l',   ':ghs:tangentstorm/tangentlabs', True),
    ('x',   ':ghs:tangentstorm/xpl',         True),
    ('t',   ':ghs:tangentstorm/tangentconf', True),
    ('r',   ':ghs:sabren/reconciled',        True),
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


def create_symlink(link_path, to_path):
    """Create a symlink, removing existing if needed."""
    if exists(link_path):
        rm(link_path)
    os.symlink(expand(to_path), expand(link_path))


def clone_repo(repo):
    """Clone a git repo."""
    if ":ghs:" in repo:
        os.system("git clone %s" % repo.replace(":ghs:", "git@github.com:/"))
    elif ":gh:" in repo:
        os.system("git clone %s" % repo.replace(":gh:", "https://github.com/"))
    else:
        os.system("git clone %s" % repo)


## task definitions ############################################

def ssh_task():
    """Task to generate SSH key."""
    def detector():
        return exists("~/.ssh/id_ed25519.pub")
    def action():
        ensure_dir("~/.ssh", 0o700)
        os.system('ssh-keygen -t ed25519 -C "%s"' % EMAIL)
        print("\nAdded new SSH key. Add it to GitHub, then run this script again:")
        print("https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/")
        raise SystemExit
    return Task("Generate SSH key (~/.ssh/id_ed25519.pub)", detector, action)


def symlink_task(sym, path):
    """Task to create a symlink from LINKS."""
    here = os.path.dirname(realpath(__file__))
    link_path = os.path.join("~", sym)
    to_path = os.path.join(here, path)
    def detector():
        if not exists(to_path):
            return True  # target doesn't exist, consider "done" (skip)
        return exists(link_path) and realpath(link_path) == expand(to_path)
    def action():
        create_symlink(link_path, to_path)
    return Task("Symlink ~/%s -> %s" % (sym, path), detector, action)


def repo_clone_task(sym, repo, default):
    """Task to clone a repo from VER and create symlink."""
    name = repo.split("/")[-1]
    repo_path = "~/ver/%s" % name
    link_path = "~/%s" % sym
    def detector():
        return exists(repo_path)
    def action():
        ensure_dir("~/ver")
        chdir("~/ver")
        clone_repo(repo)
        if exists(repo_path):
            create_symlink(link_path, repo_path)
    return Task("Clone %s -> ~/ver/%s (~/%s)" % (repo.split(":")[-1], name, sym), detector, action, default)


def repo_symlink_task(sym, repo, default):
    """Task to create symlink for a repo from VER."""
    name = repo.split("/")[-1]
    repo_path = "~/ver/%s" % name
    link_path = "~/%s" % sym
    def detector():
        if not exists(repo_path):
            return True  # repo not cloned, skip symlink
        return exists(link_path) and realpath(link_path) == expand(repo_path)
    def action():
        create_symlink(link_path, repo_path)
    return Task("Symlink ~/%s -> ~/ver/%s" % (sym, name), detector, action, default)


def git_remote_task():
    """Task to update tangentconf git remote."""
    here = os.path.dirname(realpath(__file__))
    target = "git@github.com:/tangentstorm/tangentconf.git"
    def detector():
        chdir(here)
        current = os.popen("git remote get-url origin 2>/dev/null").read().strip()
        return current == target
    def action():
        chdir(here)
        os.system("git remote set-url origin %s" % target)
    return Task("Set tangentconf remote to SSH URL", detector, action)


def check_self():
    """Check that *this* repo is set up correctly."""
    goal = "~/ver/tangentconf/tangentconf.py"
    if realpath(__file__) != expand(goal):
        print("This file should be stored as:", goal)
        print("To create the file properly:")
        print("cd; mkdir ver; cd ver; git clone https://github.com/tangentstorm/tangentconf/")
        raise SystemExit


def collect_all_tasks():
    """Collect all tasks."""
    tasks = []
    for (sym, path) in LINKS:
        tasks.append(symlink_task(sym, path))
    tasks.append(git_remote_task())
    for (sym, repo, default) in VER:
        tasks.append(repo_clone_task(sym, repo, default))
        tasks.append(repo_symlink_task(sym, repo, default))
    return tasks


def ensure_ssh_key():
    """Check for SSH key first, prompt to create if missing."""
    if not exists("~/.ssh/id_ed25519.pub"):
        task = ssh_task()
        print("\nSSH key not found: ~/.ssh/id_ed25519.pub")
        response = input("Generate one now? [Y/n]: ").strip().upper()
        if response in ("", "Y", "YES"):
            task.action()
        else:
            print("Cannot continue without SSH key.")
            raise SystemExit


def check_config():
    check_self()
    ensure_ssh_key()
    tasks = collect_all_tasks()
    run_tasks(tasks)


if __name__=="__main__":
    check_config()
