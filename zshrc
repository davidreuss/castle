# Add ~/.zsh/functions to $fpath 
fpath=($fpath $HOME/.zsh/completions $HOME/.zsh/functions)

# Load modules
autoload -U colors && colors
autoload -U compinit && compinit
autoload -U vcs_info
autoload -U zmv

# VCS
zstyle ':vcs_info:*' enable hg git svn cvs
zstyle ':vcs_info:*' use-simple true
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr "+" # uncommitted changes
zstyle ':vcs_info:*' formats "[%{$fg_bold[green]%}%b%{$reset_color%}%{$fg_bold[red]%}%u%{$reset_color%}]"

# Make autocompletion be case insensitive
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# zsh options
setopt complete_in_word prompt_subst always_to_end correct_all
setopt appendhistory hist_ignore_all_dups hist_ignore_space
setopt ignore_eof local_options local_traps
setopt auto_pushd pushd_ignore_dups pushdminus

# zsh unset
unsetopt menu_complete 

precmd() {
    vcs_info
}

# History
HISTFILE=~/.histfile
HISTSIZE=100
SAVEHIST=100
REPORTTIME=10

PROMPT='${vcs_info_msg_0_}[${SSH_CONNECTION+"%{$fg_bold[green]%}%n@%m:"}%{$fg_bold[blue]%}%~%{$reset_color%}] '

# Export options.
export CLICOLOR=xterm-256
export LSCOLORS=ExFxCxDxBxegedabagacad

# We like vim
export EDITOR="vim"
bindkey -v

# Aliases
alias slashdot='find . -name "*.DS_Store" -type f -delete && find . -name "._*" -type f -delete'

# Import syntax highlighting if exists
[[ -f ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && . ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Last but not least load a .zshlocal if exists for local overrides
[[ -f ~/.zshlocal ]] && .  ~/.zshlocal

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
