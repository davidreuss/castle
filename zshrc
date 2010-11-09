# Load modules
autoload -U colors && colors
autoload -U compinit && compinit

# Make autocompletion be case insensitive
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
#zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'r:|[._-]=** r:|=**' # Case insensitive completion.
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# zsh options
setopt complete_in_word prompt_subst always_to_end
setopt appendhistory hist_ignore_all_dups hist_ignore_space
setopt ignore_eof auto_cd local_options local_traps

# zsh unset
unsetopt menu_complete 

# History
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=1000
REPORTTIME=10

PROMPT="%B%{$fg[green]%}%m%{$reset_color%}%b:%B%{$fg[blue]%}%~%b%{$reset_color%}\$ "


# Export options.
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# We like vim
export EDITOR="vim"
bindkey -v

# Last but not least load a .zshlocal if exists for local overrides
[[ -f ~/.zshlocal ]] && .  ~/.zshlocal
