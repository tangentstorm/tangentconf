# shared dev box at work
export PS1="$WHITE@${RESET}michal-dev$BLUE\`__git_ps1\`\n$GREEN$WORKD$RESET\$ "
export PATH=~/java/apache-maven-2.0.9/bin/:$PATH
echo 'logging into stash. press ^C to skip.'
eval `ssh-agent` >> /dev/null; ssh-add
echo

