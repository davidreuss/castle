# Make terminal bash behave like VI
set -o vi

# Colors
export PS1='\[\033[0;35m\]\h\[\033[0;33m\] \w\[\033[00m\]: '

# Set the right path to include /usr/local/sbin
export PATH=/usr/local/sbin:/usr/local/bin:/opt/local/bin:/opt/local/sbin:$PATH

# bash autocomplete for os x
if [ -f /usr/local/etc/bash_completion ]; then
    source /usr/local/etc/bash_completion
fi

# Git autocomplete for os x
if [ -f /usr/local/git/contrib/completion/git-completion.bash ]; then
    source /usr/local/git/contrib/completion/git-completion.bash
fi
