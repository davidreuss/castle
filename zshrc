# Load modules
autoload -U colors && colors
autoload -U compinit && compinit -i 

# Make autocompletion be case insensitive
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# zsh options
setopt PROMPT_SUBST
setopt COMPLETE_IN_WORD
setopt ALWAYS_TO_END
setopt AUTO_MENU

unsetopt MENU_COMPLETE

# Prompt layout
export PROMPT="$fg[cyan]%}%m%b%{$reset_color%}: %~ $ "

# Export options.
export CLI_COLOR=1
export TERM=xterm-color
export LSCOLORS=Gxfxcxdxbxegedabagacad


# Include path
export PATH=/usr/local/sbin:/usr/local/bin:$PATH

# We like vim
export EDITOR="vim"
bindkey -v
