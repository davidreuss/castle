# Load modules
autoload -U colors && colors
autoload -Uz compinit && compinit

# Make autocompletion be case insensitive
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'r:|[._-]=** r:|=**'

# zsh options
setopt complete_in_word always_to_end auto_menu
setopt appendhistory hist_ignore_all_dups hist_ignore_space

# zsh unset
unsetopt menu_complete 

# History
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=1000

# Prompt layout
PROMPT="%{$fg[cyan]%}%m%b %{$reset_color%}%~: "
RPROMPT=""

# Export options.
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# We like vim
export EDITOR="vim"

# Last but not least load a .zshlocal if exists for local overrides
if [ -f "$HOME/.zshlocal" ]; then
    source "$HOME/.zshlocal"
fi
