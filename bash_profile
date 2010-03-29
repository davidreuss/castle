# Make terminal bash behave like VI
set -o vi

# Colors
export PS1='\[\033[0;35m\]\h\[\033[0;33m\] \w\[\033[00m\]: '

# Aliases SSH
alias dev="ssh hb@dev.peytz.dk"
alias fto="ssh hb@ftonline.peytz.dk"

# Source a local alias file
source $HOME/.aliases
