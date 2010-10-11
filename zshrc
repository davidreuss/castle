# Load modules
autoload -U colors && colors
autoload -Uz compinit && compinit

# Make autocompletion be case insensitive
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'r:|[._-]=** r:|=**'

# zsh options
setopt COMPLETE_IN_WORD
setopt ALWAYS_TO_END
setopt AUTO_MENU

unsetopt MENU_COMPLETE

# Prompt layout
PROMPT="%{$fg[cyan]%}%m%b %{$reset_color%}%~ $ "

# Export options.
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Include path
export PATH=/usr/local/sbin:/usr/local/bin:$PATH

# We like vim
export EDITOR="vim"
