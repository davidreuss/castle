# Load modules
autoload -U colors;
autoload -U compinit; 

# Turn on modules
colors                      # Colors
compinit                    # Completion (WTF does -i mean?)

# Options
setopt complete_in_word     # Allow autocomplete in the middle of a word
setopt always_to_end        # When autocompleting alwasy move to the end

# Making completion suck a little less
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Prompt layout
export PROMPT="$fg[cyan]%}%m%b%{$reset_color%}: %~ $ "

# Setup VIM as my favored editor for commit logs etc.
export EDITOR="vim"

# Include path
export PATH=/usr/local/sbin:/usr/local/bin:/usr/local/lib/php:/opt/local/bin:/opt/local/sbin:$PATH

