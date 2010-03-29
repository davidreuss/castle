# Make terminal bash behave like VI
set -o vi

# Colors
export PS1='\[\033[0;35m\]\h\[\033[0;33m\] \w\[\033[00m\]: '

# Source a local alias file
if [ -f $HOME/.aliases ]
then
    source $HOME/.aliases
fi
