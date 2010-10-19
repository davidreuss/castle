# Load modules
autoload -U colors && colors
autoload -Uz compinit && compinit
autoload -Uz vcs_info && vcs_info

# Make autocompletion be case insensitive
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'r:|[._-]=** r:|=**' # Case insensitive completion.

# vcs_info styling
zstyle ':vcs_info:*' enable git svn cvs
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{11}%r'

# zsh options
setopt complete_in_word always_to_end prompt_subst
setopt appendhistory hist_ignore_all_dups hist_ignore_space

# zsh unset
unsetopt menu_complete 

# History
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=1000

# Prompt layout
PROMPT="%B%{$fg[green]%}%m%{$reset_color%}%b %B%{$fg[blue]%}%~%b%{$reset_color%}\$ "

# Export options.
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# We like vim
export EDITOR="vim"
bindkey -v

# Last but not least load a .zshlocal if exists for local overrides
if [ -f "$HOME/.zshlocal" ]; then
    source "$HOME/.zshlocal"
fi
