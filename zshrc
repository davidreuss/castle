# Load modules
autoload -U colors;
autoload -U compinit; 

# Turn on modules
colors                      # Colors
compinit -i                 # Completion

# Options
setopt correct              # Auto correct spelling mistakes.
setopt complete_in_word     # Allow autocomplete in the middle of a word
setopt always_to_end        # When autocompleting alwasy move to the end

unsetopt auto_menu          # Dont autoselect the first entry when completing

# Making completion suck a little less
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
zstyle ':completion:*:*:*:*:processes' command "ps -u `whoami` -o pid,user,comm -w -w"
zstyle ':completion:*:cd:*' tag-order local-directories directory-stack path-directories

# Load known hosts file for auto-completion with ssh and scp commands
if [ -f ~/.ssh/known_hosts ]; then
    zstyle ':completion:*' hosts $( sed 's/[, ].*$//' $HOME/.ssh/known_hosts )
    zstyle ':completion:*:*:(ssh|scp):*:*' hosts `sed 's/^\([^ ,]*\).*$/\1/' ~/.ssh/known_hosts`
fi


# Propmt layout
export PROMPT="%B[%{$fg[red]%}%n%{$reset_color%}%b@%B%{$fg[cyan]%}%m%b%{$reset_color%}:%~%B]%b "

# Setup VIM as my favored editor for commit logs etc.
export EDITOR="vim"

# Include path
export PATH=/usr/local/sbin:/usr/local/bin:/usr/local/lib/php:/opt/local/bin:/opt/local/sbin:$PATH

